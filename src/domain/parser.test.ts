import { describe, expect, it } from 'vitest'
import { SAMPLE_SQL } from './examples'
import { parseSql, splitStatements } from './parser'

describe('SQL parser pipeline', () => {
  it('splits statements without breaking strings or comments', () => {
    const statements = splitStatements("CREATE TABLE a (value TEXT DEFAULT ';'); -- ;\nCREATE TABLE b (id INT);")
    expect(statements).toHaveLength(2)
    expect(statements[1].line).toBe(2)
  })

  it('normalizes PostgreSQL tables and relationships', () => {
    const schema = parseSql(SAMPLE_SQL.postgresql, 'postgresql')
    expect(schema.tables).toHaveLength(5)
    expect(schema.relationships).toHaveLength(4)
    expect(schema.tables.find((table) => table.name === 'order_items')?.isJunction).toBe(true)
    expect(schema.relationships.find((relationship) => relationship.source.columnName === 'user_id')?.resolved).toBe(true)
  })

  it.each(['mysql', 'sqlite'] as const)('parses the %s fixture', (dialect) => {
    const schema = parseSql(SAMPLE_SQL[dialect], dialect)
    expect(schema.tables.length).toBeGreaterThanOrEqual(2)
    expect(schema.relationships).toHaveLength(1)
    expect(schema.diagnostics.filter((item) => item.severity === 'error')).toHaveLength(0)
  })

  it('keeps valid statements when another statement fails', () => {
    const schema = parseSql('CREATE TABLE valid_table (id INTEGER PRIMARY KEY); CREATE TABLE broken (,,,);', 'sqlite')
    expect(schema.tables.map((table) => table.name)).toContain('valid_table')
    expect(schema.diagnostics.some((item) => item.severity === 'error')).toBe(true)
  })

  it('reports unresolved references without discarding the graph', () => {
    const schema = parseSql('CREATE TABLE events (id INTEGER, user_id INTEGER REFERENCES missing_users(id));', 'sqlite')
    expect(schema.relationships[0].resolved).toBe(false)
    expect(schema.diagnostics.some((item) => item.severity === 'warning')).toBe(true)
  })

  it('normalizes a 500-table schema without losing relationships', () => {
    const sql = Array.from({ length: 500 }, (_, index) => `CREATE TABLE table_${index} (id INTEGER PRIMARY KEY${index ? `, parent_id INTEGER REFERENCES table_${index - 1}(id)` : ''});`).join('\n')
    const startedAt = performance.now()
    const schema = parseSql(sql, 'sqlite')
    expect(schema.tables).toHaveLength(500)
    expect(schema.relationships).toHaveLength(499)
    expect(schema.diagnostics.filter((item) => item.severity === 'error')).toHaveLength(0)
    expect(performance.now() - startedAt).toBeLessThan(3000)
  }, 5000)
})
