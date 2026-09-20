import { calculateLayout } from '../domain/layout'
import type { NodePosition, SchemaModel } from '../domain/types'

interface LayoutRequest {
  schema: SchemaModel
  direction: 'RIGHT' | 'DOWN'
  pinned: string[]
  existing: Record<string, NodePosition>
}

self.onmessage = async (event: MessageEvent<LayoutRequest>) => {
  const { schema, direction, pinned, existing } = event.data
  try {
    const positions = await calculateLayout(schema, direction, pinned, existing)
    self.postMessage({ positions })
  } catch (error) {
    self.postMessage({ error: error instanceof Error ? error.message : 'Layout failed.' })
  }
}
