import { describe, expect, it } from 'vitest'
import { SAMPLE_SQL } from './examples'
import { calculateLayout } from './layout'
import { parseSql } from './parser'

describe('automatic layout', () => {
  const schema = parseSql(SAMPLE_SQL.postgresql, 'postgresql')
  const relationship = schema.relationships[0]

  it('places relationship targets to the right in horizontal mode', async () => {
    const positions = await calculateLayout(schema, 'RIGHT', [], {})
    expect(positions[relationship.target.tableId].x).toBeGreaterThan(positions[relationship.source.tableId].x)
  })

  it('places relationship targets below in vertical mode', async () => {
    const positions = await calculateLayout(schema, 'DOWN', [], {})
    expect(positions[relationship.target.tableId].y).toBeGreaterThan(positions[relationship.source.tableId].y)
  })

  it('keeps pinned tables at their saved position', async () => {
    const pinnedPosition = { x: 91, y: 37 }
    const positions = await calculateLayout(schema, 'RIGHT', [relationship.source.tableId], { [relationship.source.tableId]: pinnedPosition })
    expect(positions[relationship.source.tableId]).toEqual(pinnedPosition)
  })
})
