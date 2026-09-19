import parserPackage from 'node-sql-parser'
import { buildSchema } from './schema'
import type { Diagnostic, SchemaModel, SqlDialect } from './types'

const { Parser } = parserPackage as unknown as { Parser: new () => { astify: (sql: string, options: { database: string }) => unknown } }
const DATABASE_NAMES: Record<SqlDialect, string> = { postgresql: 'Postgresql', mysql: 'MySQL', sqlite: 'SQLite' }

export const splitStatements = (sql: string) => {
  const statements: Array<{ sql: string; line: number }> = []
  const append = (raw: string, fallbackLine: number) => {
    const value = raw.trim()
    if (!value) return
    const keyword = value.search(/\b(?:CREATE|ALTER)\b/i)
    const prefixLines = keyword > 0 ? (value.slice(0, keyword).match(/\n/g)?.length ?? 0) : 0
    statements.push({ sql: value, line: fallbackLine + prefixLines })
  }
  let start = 0
  let line = 1
  let startLine = 1
  let quote = ''
  let comment = ''
  for (let i = 0; i < sql.length; i += 1) {
    const char = sql[i]
    const next = sql[i + 1]
    if (char === '\n') line += 1
    if (comment === '--') { if (char === '\n') comment = ''; continue }
    if (comment === '/*') { if (char === '*' && next === '/') { comment = ''; i += 1 }; continue }
    if (!quote && char === '-' && next === '-') { comment = '--'; i += 1; continue }
    if (!quote && char === '/' && next === '*') { comment = '/*'; i += 1; continue }
    if (quote) {
      if (char === quote && sql[i - 1] !== '\\') quote = ''
      continue
    }
    if (char === "'" || char === '"' || char === '`') { quote = char; continue }
    if (char === ';') {
      append(sql.slice(start, i + 1), startLine)
      start = i + 1
      startLine = line
    }
  }
  append(sql.slice(start), startLine)
  return statements
}

export const parseSql = (sql: string, dialect: SqlDialect): SchemaModel => {
  if (!sql.trim()) return buildSchema([], dialect, [{ id: 'empty', severity: 'info', message: 'Paste or import SQL to build a diagram.' }])
  const parser = new Parser()
  const ast: Record<string, unknown>[] = []
  const diagnostics: Diagnostic[] = []
  splitStatements(sql).forEach((statement, index) => {
    const supported = /\b(CREATE\s+(SCHEMA|TABLE|(?:UNIQUE\s+)?INDEX|TYPE)|ALTER\s+TABLE)\b/i.test(statement.sql)
    if (!supported) {
      diagnostics.push({ id: `ignored-${index}`, severity: 'info', line: statement.line, message: 'Non-schema statement ignored.', statement: statement.sql.slice(0, 80) })
      return
    }
    if (/\bCREATE\s+(SCHEMA|TYPE)\b/i.test(statement.sql) || /\bALTER\s+TABLE\b/i.test(statement.sql)) {
      // node-sql-parser coverage varies here; unsupported statements remain visible as diagnostics.
      diagnostics.push({ id: `limited-${index}`, severity: 'info', line: statement.line, message: 'Statement recognized; details not shown in this diagram version.', statement: statement.sql.slice(0, 80) })
      return
    }
    try {
      const result = parser.astify(statement.sql, { database: DATABASE_NAMES[dialect] })
      ast.push(...(Array.isArray(result) ? result : [result]) as Record<string, unknown>[])
    } catch (error) {
      diagnostics.push({ id: `parse-${index}`, severity: 'error', line: statement.line, message: error instanceof Error ? error.message.split('\n')[0] : 'Could not parse statement.', statement: statement.sql.slice(0, 120) })
    }
  })
  return buildSchema(ast, dialect, diagnostics)
}
