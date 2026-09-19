import ELK from 'elkjs/lib/elk.bundled.js'
import type { NodePosition, SchemaModel } from '../domain/types'

interface LayoutRequest {
  schema: SchemaModel
  direction: 'RIGHT' | 'DOWN'
  pinned: string[]
  existing: Record<string, NodePosition>
}

self.onmessage = async (event: MessageEvent<LayoutRequest>) => {
  const { schema, direction, pinned, existing } = event.data
  try {
    const elk = new ELK()
    const graph = await elk.layout({
      id: 'root',
      layoutOptions: {
        'elk.algorithm': 'layered',
        'elk.direction': direction,
        'elk.spacing.nodeNode': '70',
        'elk.layered.spacing.nodeNodeBetweenLayers': '120',
        'elk.edgeRouting': 'ORTHOGONAL',
        'elk.layered.considerModelOrder.strategy': 'NODES_AND_EDGES',
      },
      children: schema.tables.map((table) => ({ id: table.id, width: 268, height: 62 + table.columns.length * 29 })),
      edges: schema.relationships.filter((relationship) => relationship.resolved).map((relationship) => ({ id: relationship.id, sources: [relationship.source.tableId], targets: [relationship.target.tableId] })),
    })
    const positions = Object.fromEntries((graph.children ?? []).map((node) => [node.id, pinned.includes(node.id) && existing[node.id] ? existing[node.id] : { x: node.x ?? 0, y: node.y ?? 0 }]))
    self.postMessage({ positions })
  } catch (error) {
    self.postMessage({ error: error instanceof Error ? error.message : 'Layout failed.' })
  }
}
