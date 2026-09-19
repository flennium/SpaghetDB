import type { SchemaModel, SqlDialect } from '../domain/types'

let activeWorker: Worker | undefined

export const parseInWorker = (sql: string, dialect: SqlDialect): Promise<SchemaModel> => {
  if (typeof Worker === 'undefined') return Promise.reject(new Error('SQL parsing requires a browser worker.'))
  activeWorker?.terminate()
  return new Promise((resolve, reject) => {
    const worker = new Worker(new URL('../workers/parser.worker.ts', import.meta.url), { type: 'module' })
    activeWorker = worker
    worker.onmessage = (event: MessageEvent<SchemaModel>) => { if (activeWorker === worker) activeWorker = undefined; resolve(event.data); worker.terminate() }
    worker.onerror = (event) => { if (activeWorker === worker) activeWorker = undefined; reject(new Error(event.message)); worker.terminate() }
    worker.postMessage({ sql, dialect })
  })
}
