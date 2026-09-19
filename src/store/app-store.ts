import { create } from 'zustand'
import { SAMPLE_SQL } from '../domain/examples'
import type { NodePosition, Project, SchemaModel, SqlDialect } from '../domain/types'
import { parseInWorker } from '../services/parser-client'
import { saveProject } from '../services/persistence'

type Theme = 'dark' | 'light'
interface AppState {
  project: Project
  inspectedTableId?: string
  focusTableId?: string
  parsing: boolean
  parseMessage: string
  theme: Theme
  highContrast: boolean
  largeText: boolean
  setSql: (sql: string) => void
  setDialect: (dialect: SqlDialect) => void
  setProjectName: (name: string) => void
  setProject: (project: Project) => void
  parse: () => Promise<void>
  inspectTable: (id?: string) => void
  setFocus: (id?: string) => void
  setPosition: (id: string, position: NodePosition) => void
  setPositions: (positions: Record<string, NodePosition>) => void
  togglePin: (id: string) => void
  toggleTheme: () => void
  toggleHighContrast: () => void
  toggleLargeText: () => void
}

const now = new Date().toISOString()
const emptySchema = (dialect: SqlDialect): SchemaModel => ({ version: 1, dialect, namespaces: [], tables: [], relationships: [], diagnostics: [] })
const initialProject = (): Project => ({
  format: 'spaghetdb', version: 1,
  project: { id: crypto.randomUUID(), name: 'Commerce map', createdAt: now, updatedAt: now },
  source: { dialect: 'postgresql', sql: SAMPLE_SQL.postgresql }, schema: emptySchema('postgresql'),
  layout: { positions: {}, pinned: [] },
})

let saveTimer: ReturnType<typeof setTimeout> | undefined
const persist = (project: Project) => {
  clearTimeout(saveTimer)
  saveTimer = setTimeout(() => saveProject(project).catch(() => undefined), 450)
}
const updateProject = (project: Project, patch: Partial<Project>): Project => ({ ...project, ...patch, project: { ...project.project, updatedAt: new Date().toISOString() } })

export const useAppStore = create<AppState>((set, get) => ({
  project: initialProject(), parsing: false, parseMessage: 'Ready', theme: (localStorage.getItem('spaghetdb-theme') as Theme) || 'dark', highContrast: localStorage.getItem('spaghetdb-contrast') === 'true', largeText: localStorage.getItem('spaghetdb-large-text') === 'true',
  setSql: (sql) => set((state) => { const project = { ...state.project, source: { ...state.project.source, sql } }; persist(project); return { project } }),
  setDialect: (dialect) => set((state) => { const project = updateProject(state.project, { source: { dialect, sql: SAMPLE_SQL[dialect] }, schema: emptySchema(dialect), layout: { positions: {}, pinned: [] } }); persist(project); return { project, inspectedTableId: undefined, focusTableId: undefined } }),
  setProjectName: (name) => set((state) => { const project = updateProject(state.project, { project: { ...state.project.project, name, updatedAt: new Date().toISOString() } }); persist(project); return { project } }),
  setProject: (project) => { persist(project); set({ project, inspectedTableId: undefined, focusTableId: undefined }) },
  parse: async () => {
    const { project } = get()
    set({ parsing: true, parseMessage: 'Parsing…' })
    try {
      const schema = await parseInWorker(project.source.sql, project.source.dialect)
      const hasTables = schema.tables.length > 0
      const next = hasTables ? updateProject(get().project, { schema }) : updateProject(get().project, { schema: { ...get().project.schema, diagnostics: schema.diagnostics } })
      persist(next)
      set({ project: next, parsing: false, parseMessage: hasTables ? `${schema.tables.length} tables mapped` : 'No tables found' })
    } catch (error) { set({ parsing: false, parseMessage: error instanceof Error ? error.message : 'Parse failed' }) }
  },
  inspectTable: (inspectedTableId) => set({ inspectedTableId }),
  setFocus: (focusTableId) => set({ focusTableId, inspectedTableId: focusTableId }),
  setPosition: (id, position) => set((state) => { const project = updateProject(state.project, { layout: { ...state.project.layout, positions: { ...state.project.layout.positions, [id]: position } } }); persist(project); return { project } }),
  setPositions: (positions) => set((state) => { const project = updateProject(state.project, { layout: { ...state.project.layout, positions: { ...state.project.layout.positions, ...positions } } }); persist(project); return { project } }),
  togglePin: (id) => set((state) => { const pinned = state.project.layout.pinned.includes(id) ? state.project.layout.pinned.filter((item) => item !== id) : [...state.project.layout.pinned, id]; const project = updateProject(state.project, { layout: { ...state.project.layout, pinned } }); persist(project); return { project } }),
  toggleTheme: () => set((state) => { const theme = state.theme === 'dark' ? 'light' : 'dark'; localStorage.setItem('spaghetdb-theme', theme); return { theme } }),
  toggleHighContrast: () => set((state) => { const highContrast = !state.highContrast; localStorage.setItem('spaghetdb-contrast', String(highContrast)); return { highContrast } }),
  toggleLargeText: () => set((state) => { const largeText = !state.largeText; localStorage.setItem('spaghetdb-large-text', String(largeText)); return { largeText } }),
}))
