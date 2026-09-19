import { AlertCircle, BarChart3, Box, CheckCircle2, KeyRound, Link2, Rows3 } from 'lucide-react'
import { qualifiedName } from '../domain/types'
import { useAppStore } from '../store/app-store'

export function Inspector() {
  const schema = useAppStore((state) => state.project.schema)
  const inspectedTableId = useAppStore((state) => state.inspectedTableId)
  const table = schema.tables.find((item) => item.id === inspectedTableId)
  const isolated = schema.tables.filter((item) => !schema.relationships.some((rel) => rel.source.tableId === item.id || rel.target.tableId === item.id)).length
  if (table) {
    const relations = schema.relationships.filter((rel) => rel.source.tableId === table.id || rel.target.tableId === table.id)
    return <aside className="inspector"><div className="panel-title"><div><span>Inspector</span><small>{qualifiedName(table)}</small></div></div>
      <div className="inspector-scroll"><section><div className="inspector-heading"><Box size={14} /> Columns <span>{table.columns.length}</span></div>{table.columns.map((column) => <div className="inspect-column" key={column.id}><div><strong>{column.name}</strong><code>{column.dataType}</code></div><div className="badges">{column.primaryKey && <span><KeyRound size={10} /> PK</span>}{column.foreignKey && <span><Link2 size={10} /> FK</span>}{column.unique && <span>UQ</span>}{column.nullable && <span>NULL</span>}</div>{column.defaultValue && <small>default: {column.defaultValue}</small>}</div>)}</section>
        <section><div className="inspector-heading"><Link2 size={14} /> Relationships <span>{relations.length}</span></div>{relations.length ? relations.map((rel) => { const outbound = rel.source.tableId === table.id; const other = schema.tables.find((item) => item.id === (outbound ? rel.target.tableId : rel.source.tableId)); return <div className="relation-row" key={rel.id}><span>{outbound ? 'references' : 'referenced by'}</span><strong>{other ? qualifiedName(other) : rel.targetLabel}</strong><code>{rel.cardinality === 'one-to-one' ? '1 : 1' : 'N : 1'}</code></div> }) : <p className="muted">No relationships for this table.</p>}</section>
        <section><div className="inspector-heading"><Rows3 size={14} /> Indexes <span>{table.indexes.length}</span></div>{table.indexes.length ? table.indexes.map((index) => <div className="index-row" key={index.id}><strong>{index.name}</strong><code>{index.columns.join(', ')}</code></div>) : <p className="muted">No standalone indexes found.</p>}</section></div>
    </aside>
  }
  return <aside className="inspector"><div className="panel-title"><div><span>Schema overview</span><small>{schema.dialect}</small></div></div><div className="inspector-scroll">
    <section><div className="inspector-heading"><BarChart3 size={14} /> Statistics</div><div className="stat-grid"><Stat value={schema.tables.length} label="tables" /><Stat value={schema.tables.reduce((sum, item) => sum + item.columns.length, 0)} label="columns" /><Stat value={schema.relationships.length} label="relations" /><Stat value={schema.namespaces.length} label="schemas" /><Stat value={schema.tables.filter((item) => item.isJunction).length} label="junctions" /><Stat value={isolated} label="isolated" /></div></section>
    <section><div className="inspector-heading"><AlertCircle size={14} /> Parse report <span>{schema.diagnostics.length}</span></div>{schema.diagnostics.length ? schema.diagnostics.map((diagnostic) => <div className={`diagnostic ${diagnostic.severity}`} key={diagnostic.id}>{diagnostic.severity === 'error' ? <AlertCircle size={14} /> : <CheckCircle2 size={14} />}<div><strong>{diagnostic.severity}{diagnostic.line ? ` · line ${diagnostic.line}` : ''}</strong><p>{diagnostic.message}</p></div></div>) : <div className="diagnostic success"><CheckCircle2 size={14} /><div><strong>Clean parse</strong><p>No issues found in the current schema.</p></div></div>}</section>
    <section className="legend"><div className="inspector-heading">Notation</div><p><KeyRound size={12} /> Primary key</p><p><Link2 size={12} /> Foreign key</p><p><span>?</span> Nullable column</p></section>
  </div></aside>
}

function Stat({ value, label }: { value: number; label: string }) { return <div><strong>{value}</strong><span>{label}</span></div> }
