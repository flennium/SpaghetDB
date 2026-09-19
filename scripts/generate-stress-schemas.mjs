import { mkdir, writeFile } from 'node:fs/promises'
import { dirname, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..')
const outputDirectory = resolve(root, 'public', 'examples')

function tableName(index) {
  return `entity_${String(index + 1).padStart(4, '0')}`
}

function generateSchema(tableCount) {
  const statements = [
    `-- SpaghetDB deterministic ${tableCount}-table stress fixture.`,
    '-- Generated with: npm run generate:stress',
    'CREATE SCHEMA stress;',
  ]

  for (let index = 0; index < tableCount; index += 1) {
    const name = tableName(index)
    const parent = index > 0 ? tableName(Math.floor((index - 1) / 3)) : undefined
    const owner = index > 7 && index % 4 === 0 ? tableName(index - 7) : undefined
    const references = [
      parent ? `  parent_id BIGINT REFERENCES stress.${parent}(id),` : '',
      owner ? `  owner_id BIGINT REFERENCES stress.${owner}(id),` : '',
    ].filter(Boolean)

    statements.push(`CREATE TABLE stress.${name} (
  id BIGINT PRIMARY KEY,
${references.length ? `${references.join('\n')}\n` : ''}  external_key VARCHAR(64) NOT NULL UNIQUE,
  status VARCHAR(24) NOT NULL DEFAULT 'active',
  payload JSONB,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP
);`)

    if (parent) statements.push(`CREATE INDEX ${name}_parent_idx ON stress.${name}(parent_id);`)
    if (owner) statements.push(`CREATE INDEX ${name}_owner_idx ON stress.${name}(owner_id);`)
  }

  return `${statements.join('\n\n')}\n`
}

await mkdir(outputDirectory, { recursive: true })
for (const tableCount of [100, 500, 1000]) {
  await writeFile(resolve(outputDirectory, `stress-${tableCount}.sql`), generateSchema(tableCount))
}

console.log('Generated PostgreSQL stress fixtures: 100, 500, and 1,000 tables.')
