import ELK from 'elkjs/lib/elk.bundled.js'
import type { NodePosition, SchemaModel } from './types'

const elk = new ELK()

export async function calculateLayout(schema: SchemaModel, direction: 'RIGHT' | 'DOWN', pinned: string[], existing: Record<string, NodePosition>) {
  const pinnedIds = new Set(pinned)
  const graph = await elk.layout({
    id: 'root',
    layoutOptions: {
      'elk.algorithm': 'layered',
      'elk.direction': direction,
      'elk.spacing.nodeNode': '70',
      'elk.layered.spacing.nodeNodeBetweenLayers': '120',
      'elk.edgeRouting': 'ORTHOGONAL',
      'elk.layered.considerModelOrder.strategy': 'NODES_AND_EDGES',
    },
    children: schema.tables.map((table) => ({ id: table.id, width: 268, height: 62 + table.columns.length * 29 })),
    edges: schema.relationships.filter((relationship) => relationship.resolved).map((relationship) => ({ id: relationship.id, sources: [relationship.source.tableId], targets: [relationship.target.tableId] })),
  })

  return Object.fromEntries((graph.children ?? []).map((node) => [node.id, pinnedIds.has(node.id) && existing[node.id] ? existing[node.id] : { x: node.x ?? 0, y: node.y ?? 0 }]))
}
