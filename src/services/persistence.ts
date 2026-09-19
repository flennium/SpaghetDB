import { openDB } from 'idb'
import type { Project } from '../domain/types'

const DB_NAME = 'spaghetdb'
const STORE = 'projects'

const database = () => openDB(DB_NAME, 1, {
  upgrade(db) {
    if (!db.objectStoreNames.contains(STORE)) db.createObjectStore(STORE, { keyPath: 'project.id' })
  },
})

export const saveProject = async (project: Project) => (await database()).put(STORE, project)
export const loadProject = async (id: string) => (await database()).get(STORE, id) as Promise<Project | undefined>
export const loadProjects = async () => (await database()).getAll(STORE) as Promise<Project[]>
export const deleteProject = async (id: string) => (await database()).delete(STORE, id)

export const downloadJson = (project: Project) => {
  const blob = new Blob([JSON.stringify(project, null, 2)], { type: 'application/json' })
  const url = URL.createObjectURL(blob)
  const anchor = document.createElement('a')
  anchor.href = url
  anchor.download = `${project.project.name.toLowerCase().replace(/[^a-z0-9]+/g, '-') || 'schema'}.spaghetdb.json`
  anchor.click()
  URL.revokeObjectURL(url)
}
