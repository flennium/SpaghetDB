import { parseSql } from '../domain/parser'
import type { SqlDialect } from '../domain/types'

self.onmessage = (event: MessageEvent<{ sql: string; dialect: SqlDialect }>) => {
  const { sql, dialect } = event.data
  self.postMessage(parseSql(sql, dialect))
}
