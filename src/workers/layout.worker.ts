import { calculateLayout } from '../domain/layout'
import type { NodePosition, SchemaModel } from '../domain/types'

interface LayoutRequest {
  id: number
  schema: SchemaModel
  direction: 'RIGHT' | 'DOWN'
  pinned: string[]
  existing: Record<string, NodePosition>
}

self.onmessage = async (event: MessageEvent<LayoutRequest>) => {
  const { id, schema, direction, pinned, existing } = event.data
  try {
    const positions = await calculateLayout(schema, direction, pinned, existing)
    self.postMessage({ id, positions })
  } catch (error) {
    self.postMessage({ id, error: error instanceof Error ? error.message : 'Layout failed.' })
  }
}
