import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { Background, BackgroundVariant, Controls, MarkerType, MiniMap, ReactFlow, ReactFlowProvider, applyNodeChanges, type Edge, type Node, type NodeChange, type ReactFlowInstance } from '@xyflow/react'
import { Download, Focus, LayoutDashboard, Maximize2, X } from 'lucide-react'
import { toPng, toSvg } from 'html-to-image'
import { useAppStore } from '../store/app-store'
import { layoutSchema } from '../services/layout-client'
import { TableNode, type TableNodeData } from './TableNode'
import '@xyflow/react/dist/style.css'

const nodeTypes = { table: TableNode }
const download = (url: string, filename: string) => { const anchor = document.createElement('a'); anchor.href = url; anchor.download = filename; anchor.click() }

function GraphCanvasInner({ highlighted }: { highlighted?: string }) {
  const schema = useAppStore((state) => state.project.schema)
  const layout = useAppStore((state) => state.project.layout)
  const projectName = useAppStore((state) => state.project.project.name)
  const focusTableId = useAppStore((state) => state.focusTableId)
  const inspectTable = useAppStore((state) => state.inspectTable)
  const setFocus = useAppStore((state) => state.setFocus)
  const setPosition = useAppStore((state) => state.setPosition)
  const setPositions = useAppStore((state) => state.setPositions)
  const togglePin = useAppStore((state) => state.togglePin)
  const [nodes, setNodes] = useState<Node<TableNodeData>[]>([])
  const [instance, setInstance] = useState<ReactFlowInstance<Node<TableNodeData>, Edge>>()
  const [busyMessage, setBusyMessage] = useState('')
  const rootRef = useRef<HTMLDivElement>(null)
  const neighbors = useMemo(() => {
    if (!focusTableId) return new Set<string>()
    const ids = new Set([focusTableId])
    schema.relationships.forEach((rel) => { if (rel.source.tableId === focusTableId) ids.add(rel.target.tableId); if (rel.target.tableId === focusTableId) ids.add(rel.source.tableId) })
    return ids
  }, [focusTableId, schema.relationships])

  useEffect(() => {
    // eslint-disable-next-line react/set-state-in-effect
    setNodes(schema.tables.map((table, index) => ({
      id: table.id, type: 'table', position: layout.positions[table.id] ?? { x: (index % 3) * 340, y: Math.floor(index / 3) * 300 },
      data: { table, dimmed: Boolean(focusTableId && !neighbors.has(table.id)), pinned: layout.pinned.includes(table.id), highlighted: highlighted === table.id, onPin: togglePin, onFocus: setFocus, onInspect: inspectTable },
    })))
  }, [schema.tables, layout.positions, layout.pinned, focusTableId, neighbors, highlighted, togglePin, setFocus, inspectTable])

  const edges = useMemo<Edge[]>(() => schema.relationships.filter((rel) => rel.resolved).map((rel) => ({
    id: rel.id, source: rel.source.tableId, target: rel.target.tableId,
    sourceHandle: `${rel.source.columnId}-source`, targetHandle: `${rel.target.columnId}-target`,
    label: rel.cardinality === 'one-to-one' ? `${rel.optional ? '0..1' : '1'} : 1` : `${rel.optional ? '0..1' : 'N'} : 1`,
    type: 'smoothstep', animated: focusTableId === rel.source.tableId || focusTableId === rel.target.tableId,
    markerEnd: { type: MarkerType.ArrowClosed },
    style: { opacity: focusTableId && !(neighbors.has(rel.source.tableId) && neighbors.has(rel.target.tableId)) ? 0.08 : 1 },
    className: rel.resolved ? '' : 'unresolved-edge',
  })), [schema.relationships, focusTableId, neighbors])

  const onNodesChange = useCallback((changes: NodeChange<Node<TableNodeData>>[]) => setNodes((current) => applyNodeChanges(changes, current)), [])
  useEffect(() => {
    if (!highlighted || !instance) return
    const node = nodes.find((item) => item.id === highlighted)
    if (node) instance.setCenter(node.position.x + 134, node.position.y + 80, { zoom: Math.max(instance.getZoom(), 0.7), duration: 320 })
  }, [highlighted, instance, nodes])
  const autoLayout = async (direction: 'RIGHT' | 'DOWN') => {
    if (busyMessage) return
    setBusyMessage('Arranging tables…')
    try {
      const positions = await layoutSchema(schema, direction, layout.pinned, layout.positions)
      setNodes((current) => current.map((node) => ({ ...node, position: positions[node.id] ?? node.position })))
      setPositions(positions)
      await new Promise((resolve) => requestAnimationFrame(() => requestAnimationFrame(resolve)))
      await instance?.fitView({ padding: 0.15, duration: 350 })
      setBusyMessage('Layout complete')
    } catch { setBusyMessage('Could not arrange this schema') }
    setTimeout(() => setBusyMessage(''), 1800)
  }
  const exportDiagram = async (format: 'svg' | 'png') => {
    const element = rootRef.current?.querySelector('.react-flow__viewport') as HTMLElement | null
    if (!element) return
    setBusyMessage(`Preparing ${format.toUpperCase()}…`)
    await instance?.fitView({ padding: 0.08, duration: 0 })
    await new Promise((resolve) => requestAnimationFrame(() => requestAnimationFrame(resolve)))
    const options = { backgroundColor: getComputedStyle(document.documentElement).getPropertyValue('--canvas').trim(), pixelRatio: format === 'png' ? 2 : 1, cacheBust: true }
    try { download(format === 'svg' ? await toSvg(element, options) : await toPng(element, options), `${projectName}.${format}`); setBusyMessage(`${format.toUpperCase()} downloaded`) }
    catch { setBusyMessage(`Could not export ${format.toUpperCase()}`) }
    setTimeout(() => setBusyMessage(''), 1800)
  }

  return <div className="canvas-wrap" ref={rootRef}>
    <div className="canvas-toolbar">
      <button onClick={() => autoLayout('RIGHT')} disabled={Boolean(busyMessage)} title="Horizontal auto-layout"><LayoutDashboard size={15} /> Arrange</button>
      <button onClick={() => autoLayout('DOWN')} disabled={Boolean(busyMessage)} title="Vertical auto-layout"><Maximize2 size={15} /> Vertical</button>
      <span />
      <button onClick={() => exportDiagram('svg')}><Download size={14} /> SVG</button><button onClick={() => exportDiagram('png')}><Download size={14} /> PNG</button>
    </div>
    <span className="sr-only" role="status" aria-live="polite">{busyMessage}</span>
    {focusTableId && <div className="focus-banner"><Focus size={15} /> Focused on <strong>{schema.tables.find((table) => table.id === focusTableId)?.name}</strong><button onClick={() => setFocus()} aria-label="Exit focus mode"><X size={15} /></button></div>}
    <ReactFlow nodes={nodes} edges={edges} nodeTypes={nodeTypes} onInit={setInstance} onNodesChange={onNodesChange}
      onNodeDragStop={(_, node) => setPosition(node.id, node.position)} onPaneClick={() => inspectTable()}
      elementsSelectable={false} nodesConnectable={false} selectionKeyCode={null} multiSelectionKeyCode={null} deleteKeyCode={null}
      onlyRenderVisibleElements panOnScroll panOnDrag={[1, 2]} zoomOnScroll={false} zoomOnPinch fitView minZoom={0.08} maxZoom={1.7}>
      <Background variant={BackgroundVariant.Dots} gap={24} size={1} /><Controls showInteractive={false} /><MiniMap pannable zoomable nodeColor="#37c8ff" maskColor="var(--minimap-mask)" />
    </ReactFlow>
    {schema.tables.length === 0 && <div className="canvas-empty"><DatabaseIcon /><h2>No tables on the board</h2><p>Paste CREATE TABLE statements, then press Parse schema.</p></div>}
  </div>
}

const DatabaseIcon = () => <div className="empty-glyph" aria-hidden="true"><i /><i /><i /></div>
export function GraphCanvas(props: { highlighted?: string }) { return <ReactFlowProvider><GraphCanvasInner {...props} /></ReactFlowProvider> }
