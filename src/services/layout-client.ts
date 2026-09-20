import type { NodePosition, SchemaModel } from '../domain/types'

interface LayoutResponse { id: number; positions?: Record<string, NodePosition>; error?: string }

const worker = new Worker(new URL('../workers/layout.worker.ts', import.meta.url), { type: 'module' })
const pending = new Map<number, { resolve: (positions: Record<string, NodePosition>) => void; reject: (error: Error) => void }>()
let nextRequestId = 0

worker.onmessage = (event: MessageEvent<LayoutResponse>) => {
  const request = pending.get(event.data.id)
  if (!request) return
  pending.delete(event.data.id)
  if (event.data.error || !event.data.positions) request.reject(new Error(event.data.error ?? 'Layout failed.'))
  else request.resolve(event.data.positions)
}

worker.onerror = (event) => {
  pending.forEach(({ reject }) => reject(new Error(event.message)))
  pending.clear()
}

export function layoutSchema(schema: SchemaModel, direction: 'RIGHT' | 'DOWN', pinned: string[], existing: Record<string, NodePosition>): Promise<Record<string, NodePosition>> {
  return new Promise((resolve, reject) => {
    const id = nextRequestId++
    pending.set(id, { resolve, reject })
    worker.postMessage({ id, schema, direction, pinned, existing })
  })
}
