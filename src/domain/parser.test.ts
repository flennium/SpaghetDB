import { describe, expect, it } from 'vitest'
import { readFileSync } from 'node:fs'
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
    expect(schema.tables).toHaveLength(9)
    expect(schema.relationships).toHaveLength(11)
    expect(schema.tables.find((table) => table.name === 'order_items')?.isJunction).toBe(true)
    expect(schema.relationships.every((relationship) => relationship.resolved)).toBe(true)
  })

  it.each(['mysql', 'sqlite'] as const)('parses the %s fixture', (dialect) => {
    const schema = parseSql(SAMPLE_SQL[dialect], dialect)
    expect(schema.tables.length).toBeGreaterThanOrEqual(6)
    expect(schema.relationships.length).toBeGreaterThanOrEqual(5)
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

  it('parses the shipped 1,000-table stress fixture', () => {
    const sql = readFileSync(new URL('../../public/examples/stress-1000.sql', import.meta.url), 'utf8')
    const schema = parseSql(sql, 'postgresql')
    expect(schema.tables).toHaveLength(1000)
    expect(schema.relationships.length).toBeGreaterThan(1200)
    expect(schema.diagnostics.filter((item) => item.severity === 'error')).toHaveLength(0)
  }, 10000)
})
