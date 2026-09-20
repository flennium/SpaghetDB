import { memo, useEffect } from 'react'
import { Handle, Position, useUpdateNodeInternals, type NodeProps } from '@xyflow/react'
import { KeyRound, Link2, Pin } from 'lucide-react'
import type { Table } from '../domain/types'

export type TableNodeData = { table: Table; direction: 'RIGHT' | 'DOWN'; dimmed: boolean; pinned: boolean; highlighted: boolean; onPin: (id: string) => void; onFocus: (id: string) => void; onInspect: (id: string) => void }

export const TableNode = memo(({ id, data }: NodeProps) => {
  const { table, direction, dimmed, pinned, highlighted, onPin, onFocus, onInspect } = data as unknown as TableNodeData
  const updateNodeInternals = useUpdateNodeInternals()
  const targetPosition = direction === 'DOWN' ? Position.Top : Position.Left
  const sourcePosition = direction === 'DOWN' ? Position.Bottom : Position.Right
  useEffect(() => updateNodeInternals(id), [direction, id, updateNodeInternals])
  const label = `${table.namespace}.${table.name}, ${table.columns.length} columns${table.isJunction ? ', junction table' : ''}`
  return <div className={`table-node ${dimmed ? 'dimmed' : ''} ${highlighted ? 'highlighted' : ''}`} role="group" tabIndex={0} aria-label={label}
    onClick={() => onInspect(table.id)} onDoubleClick={(event) => { event.stopPropagation(); onFocus(table.id) }}
    onKeyDown={(event) => { if (event.key === 'Enter') onInspect(table.id); if (event.key.toLowerCase() === 'f') onFocus(table.id) }}>
    <div className="table-node-head"><div><small>{table.namespace}</small><strong>{table.name}</strong></div><button className={pinned ? 'active' : ''} onClick={(event) => { event.stopPropagation(); onPin(table.id) }} aria-label={pinned ? 'Unpin table' : 'Pin table'}><Pin size={13} /></button></div>
    <div className="table-node-columns">{table.columns.map((column) => <div className="table-column" key={column.id}>
      <Handle id={`${column.id}-target`} type="target" position={targetPosition} aria-hidden="true" />
      <span className="column-flags">{column.primaryKey ? <KeyRound size={11} aria-label="Primary key" /> : column.foreignKey ? <Link2 size={11} aria-label="Foreign key" /> : <i />}</span>
      <span className="column-name">{column.name}</span><code>{column.dataType}</code>{column.nullable && <span className="nullable">?</span>}
      <Handle id={`${column.id}-source`} type="source" position={sourcePosition} aria-hidden="true" />
    </div>)}</div>
    {table.isJunction && <div className="junction-label">junction table</div>}
  </div>
})
