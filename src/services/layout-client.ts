import type { NodePosition, SchemaModel } from '../domain/types'

export function layoutSchema(schema: SchemaModel, direction: 'RIGHT' | 'DOWN', pinned: string[], existing: Record<string, NodePosition>): Promise<Record<string, NodePosition>> {
  return new Promise((resolve, reject) => {
    const worker = new Worker(new URL('../workers/layout.worker.ts', import.meta.url), { type: 'module' })
    worker.onmessage = (event: MessageEvent<{ positions?: Record<string, NodePosition>; error?: string }>) => {
      worker.terminate()
      if (event.data.error || !event.data.positions) reject(new Error(event.data.error ?? 'Layout failed.'))
      else resolve(event.data.positions)
    }
    worker.onerror = (event) => { worker.terminate(); reject(new Error(event.message)) }
    worker.postMessage({ schema, direction, pinned, existing })
  })
}
