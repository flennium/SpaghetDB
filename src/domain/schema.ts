import type { Column, Constraint, Diagnostic, Index, Relationship, SchemaModel, SqlDialect, Table } from './types'

type AstNode = Record<string, any>
const slug = (value: string) => value.toLowerCase().replace(/["`[\]]/g, '').replace(/[^a-z0-9_.-]+/g, '-')
const text = (value: unknown): string => {
  if (value == null) return ''
  if (typeof value === 'string' || typeof value === 'number') return String(value)
  if (typeof value === 'object') {
    const node = value as AstNode
    return text(node.value ?? node.expr ?? node.column ?? node.name)
  }
  return String(value)
}
const columnName = (value: unknown) => text(value).replace(/["`]/g, '')
const dataType = (definition: AstNode = {}) => {
  const base = String(definition.dataType ?? definition.type ?? 'UNKNOWN').toUpperCase()
  const length = definition.length
  if (Array.isArray(length)) return `${base}(${length.map(text).join(', ')})`
  return length != null ? `${base}(${text(length)})` : base
}
const expressionText = (value: unknown): string | undefined => {
  if (value == null) return undefined
  if (typeof value === 'string' || typeof value === 'number') return String(value)
  const node = value as AstNode
  if (node.value != null) return String(node.value)
  if (node.name) return String(node.name)
  if (node.type === 'function') return `${text(node.name)}()`
  try { return JSON.stringify(value) } catch { return String(value) }
}
const tableIdentity = (raw: AstNode, dialect: SqlDialect) => {
  const item = Array.isArray(raw) ? raw[0] : raw
  const namespace = String(item?.db || (dialect === 'sqlite' ? 'main' : 'public')).replace(/["`]/g, '')
  const name = String(item?.table || item?.name || '').replace(/["`]/g, '')
  return { namespace, name, id: slug(`${namespace}.${name}`) }
}
const constraintColumns = (definition: AstNode): string[] => {
  const raw = definition.definition ?? definition.columns ?? definition.index_columns ?? []
  return (Array.isArray(raw) ? raw : [raw]).map(columnName).filter(Boolean)
}

const parseDefinition = (definition: AstNode, table: Table, dialect: SqlDialect) => {
  if (definition.resource === 'column') {
    const name = columnName(definition.column)
    const column: Column = {
      id: slug(`${table.id}.${name}`), name, dataType: dataType(definition.definition),
      nullable: !definition.nullable || String(definition.nullable?.type ?? definition.nullable).toLowerCase() !== 'not null',
      defaultValue: expressionText(definition.default_val?.value ?? definition.default_val),
      primaryKey: Boolean(definition.primary_key), unique: Boolean(definition.unique),
      foreignKey: Boolean(definition.reference_definition),
      generated: Boolean(definition.auto_increment || definition.generated || definition.identity),
    }
    table.columns.push(column)
    if (column.primaryKey) table.constraints.push({ id: `${column.id}-pk`, kind: 'primary', columns: [name] })
    if (column.unique) table.constraints.push({ id: `${column.id}-uq`, kind: 'unique', columns: [name] })
    if (definition.reference_definition) {
      const ref = definition.reference_definition
      const target = tableIdentity(ref.table, dialect)
      table.constraints.push({ id: `${column.id}-fk`, kind: 'foreign', columns: [name], referencedTable: `${target.namespace}.${target.name}`, referencedColumns: constraintColumns(ref) })
    }
    return
  }
  const resource = `${definition.resource ?? ''} ${definition.constraint_type ?? ''}`.toLowerCase()
  const kind = resource.includes('primary') ? 'primary' : resource.includes('foreign') ? 'foreign' : resource.includes('unique') ? 'unique' : resource.includes('check') ? 'check' : undefined
  if (!kind) return
  const columns = constraintColumns(definition)
  const constraint: Constraint = { id: slug(`${table.id}.${definition.constraint ?? definition.name ?? kind}.${columns.join('.')}`), name: text(definition.constraint ?? definition.name) || undefined, kind, columns, expression: kind === 'check' ? expressionText(definition.definition) : undefined }
  if (kind === 'foreign') {
    const ref = definition.reference_definition ?? definition.reference ?? definition
    const target = tableIdentity(ref.table ?? ref.reference_table, dialect)
    constraint.referencedTable = `${target.namespace}.${target.name}`
    constraint.referencedColumns = constraintColumns(ref)
  }
  table.constraints.push(constraint)
  columns.forEach((name) => {
    const column = table.columns.find((item) => item.name === name)
    if (!column) return
    if (kind === 'primary') column.primaryKey = true
    if (kind === 'unique') column.unique = true
    if (kind === 'foreign') column.foreignKey = true
  })
}

export const buildSchema = (statements: AstNode[], dialect: SqlDialect, diagnostics: Diagnostic[] = []): SchemaModel => {
  const tables: Table[] = []
  const indexes: Array<{ table: string; index: Index }> = []
  for (const statement of statements) {
    if (statement?.type !== 'create') continue
    if (statement.keyword === 'table') {
      const identity = tableIdentity(statement.table, dialect)
      if (!identity.name) continue
      if (tables.some((item) => item.id === identity.id)) {
        diagnostics.push({ id: `duplicate-${identity.id}`, severity: 'warning', message: `Duplicate table ${identity.namespace}.${identity.name} was ignored.` })
        continue
      }
      const table: Table = { ...identity, columns: [], constraints: [], indexes: [], isJunction: false }
      for (const definition of statement.create_definitions ?? []) parseDefinition(definition, table, dialect)
      tables.push(table)
    } else if (statement.keyword === 'index') {
      const target = tableIdentity(statement.table, dialect)
      indexes.push({ table: target.id, index: { id: slug(`${target.id}.${text(statement.index)}`), name: text(statement.index) || 'unnamed_index', columns: constraintColumns(statement), unique: String(statement.index_type ?? '').toLowerCase() === 'unique' } })
    }
  }
  indexes.forEach(({ table, index }) => tables.find((item) => item.id === table)?.indexes.push(index))
  const relationships: Relationship[] = []
  for (const table of tables) {
    const foreign = table.constraints.filter((item) => item.kind === 'foreign')
    const covering = table.constraints.filter((item) => item.kind === 'primary' || item.kind === 'unique')
    table.isJunction = foreign.length >= 2 && covering.some((key) => foreign.every((fk) => fk.columns.every((col) => key.columns.includes(col))))
    for (const constraint of foreign) {
      const parts = (constraint.referencedTable ?? '').split('.')
      const namespace = parts.length > 1 ? parts[0] : table.namespace
      const name = parts.length > 1 ? parts[1] : parts[0]
      const target = tables.find((item) => item.namespace === namespace && item.name === name) ?? tables.find((item) => item.name === name)
      const sourceColumn = table.columns.find((item) => item.name === constraint.columns[0])
      const targetColumnName = constraint.referencedColumns?.[0] ?? 'id'
      const targetColumn = target?.columns.find((item) => item.name === targetColumnName)
      const isUnique = covering.some((item) => constraint.columns.every((col) => item.columns.includes(col)))
      const relationship: Relationship = {
        id: slug(`${table.id}.${constraint.columns.join('.')}-${constraint.referencedTable}.${targetColumnName}`),
        source: { tableId: table.id, columnId: sourceColumn?.id ?? `${table.id}.unknown`, columnName: sourceColumn?.name ?? constraint.columns[0] ?? '?' },
        target: { tableId: target?.id ?? `missing-${slug(constraint.referencedTable ?? 'unknown')}`, columnId: targetColumn?.id ?? 'missing', columnName: targetColumnName },
        cardinality: isUnique ? 'one-to-one' : 'one-to-many', optional: sourceColumn?.nullable ?? true,
        resolved: Boolean(target && targetColumn), targetLabel: constraint.referencedTable,
      }
      relationships.push(relationship)
      if (!relationship.resolved) diagnostics.push({ id: `unresolved-${relationship.id}`, severity: 'warning', message: `Could not resolve reference to ${constraint.referencedTable}(${targetColumnName}).` })
    }
  }
  const namespaceNames = Array.from(new Set(tables.map((table) => table.namespace)))
  return { version: 1, dialect, namespaces: namespaceNames.map((name) => ({ id: slug(name), name })), tables, relationships, diagnostics }
}
