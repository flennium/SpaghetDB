import { useEffect, useRef, useState } from 'react'
import { Accessibility, Check, ChevronDown, Download, FilePlus2, FolderOpen, Moon, Search, Sun, Upload } from 'lucide-react'
import { Brand } from './Brand'
import type { Project, SqlDialect } from '../domain/types'
import { deleteProject, downloadJson, loadProjects } from '../services/persistence'
import { useAppStore } from '../store/app-store'
import { SAMPLE_SQL } from '../domain/examples'

export function TopBar({ onSearch }: { onSearch: () => void }) {
  const metadata = useAppStore((state) => state.project.project)
  const dialect = useAppStore((state) => state.project.source.dialect)
  const hasErrors = useAppStore((state) => state.project.schema.diagnostics.some((item) => item.severity === 'error'))
  const parseMessage = useAppStore((state) => state.parseMessage)
  const theme = useAppStore((state) => state.theme)
  const highContrast = useAppStore((state) => state.highContrast)
  const largeText = useAppStore((state) => state.largeText)
  const setProjectName = useAppStore((state) => state.setProjectName)
  const setDialect = useAppStore((state) => state.setDialect)
  const setProject = useAppStore((state) => state.setProject)
  const toggleTheme = useAppStore((state) => state.toggleTheme)
  const toggleHighContrast = useAppStore((state) => state.toggleHighContrast)
  const toggleLargeText = useAppStore((state) => state.toggleLargeText)
  const [menu, setMenu] = useState(false)
  const [accessibilityMenu, setAccessibilityMenu] = useState(false)
  const [projects, setProjects] = useState<Project[]>([])
  const importRef = useRef<HTMLInputElement>(null)
  useEffect(() => { if (menu) loadProjects().then((items) => setProjects(items.sort((a, b) => b.project.updatedAt.localeCompare(a.project.updatedAt)))) }, [menu])
  const newProject = () => {
    const now = new Date().toISOString()
    setProject({ format: 'spaghetdb', version: 1, project: { id: crypto.randomUUID(), name: 'Untitled schema', createdAt: now, updatedAt: now }, source: { dialect: 'postgresql', sql: SAMPLE_SQL.postgresql }, schema: { version: 1, dialect: 'postgresql', namespaces: [], tables: [], relationships: [], diagnostics: [] }, layout: { positions: {}, pinned: [] } })
    setMenu(false)
  }
  const duplicate = () => { const project = useAppStore.getState().project; const now = new Date().toISOString(); setProject({ ...project, project: { ...project.project, id: crypto.randomUUID(), name: `${project.project.name} copy`, createdAt: now, updatedAt: now } }); setMenu(false) }
  const importProject = async (file?: File) => {
    if (!file) return
    try { const value = JSON.parse(await file.text()) as Project; if (value.format !== 'spaghetdb' || value.version !== 1) throw new Error(); setProject(value) } catch { alert('This is not a supported SpaghetDB project file.') }
  }
  return <header className="topbar"><Brand compact /><div className="project-switcher"><button onClick={() => setMenu((value) => !value)} aria-expanded={menu}><FolderOpen size={15} /><span>{metadata.name}</span><ChevronDown size={13} /></button>{menu && <div className="project-menu"><div className="project-actions"><button onClick={newProject}><FilePlus2 size={14} /> New</button><button onClick={duplicate}>Duplicate</button><button onClick={() => downloadJson(useAppStore.getState().project)}><Download size={14} /> Export project</button><button onClick={() => importRef.current?.click()}><Upload size={14} /> Import</button></div><p>Recent projects</p>{projects.map((item) => <div className="recent-project" key={item.project.id}><button onClick={() => { setProject(item); setMenu(false) }}><span>{item.project.name}<small>{item.schema.tables.length} tables</small></span></button>{item.project.id !== metadata.id && <button className="delete-project" aria-label={`Delete ${item.project.name}`} onClick={() => { if (confirm(`Delete “${item.project.name}”?`)) { deleteProject(item.project.id); setProjects((all) => all.filter((p) => p.project.id !== item.project.id)) } }}>×</button>}</div>)}</div>}</div>
    <input className="project-name" value={metadata.name} onChange={(event) => setProjectName(event.target.value)} aria-label="Project name" />
    <span className="parse-status" role="status" aria-live="polite"><i className={hasErrors ? 'warning' : ''} /> {parseMessage}</span>
    <div className="topbar-spacer" /><button className="search-trigger" onClick={onSearch}><Search size={15} /><span>Search schema</span><kbd>⌘ K</kbd></button>
    <select value={dialect} onChange={(event) => setDialect(event.target.value as SqlDialect)} aria-label="SQL dialect"><option value="postgresql">PostgreSQL</option><option value="mysql">MySQL</option><option value="sqlite">SQLite</option></select>
    <div className="accessibility-switcher"><button className="theme-toggle" onClick={() => setAccessibilityMenu((value) => !value)} aria-label="Accessibility preferences" aria-expanded={accessibilityMenu}><Accessibility size={16} /></button>{accessibilityMenu && <div className="accessibility-menu"><strong>Accessibility</strong><button onClick={toggleHighContrast}><span><b>High contrast</b><small>Stronger borders and labels</small></span>{highContrast && <Check size={15} />}</button><button onClick={toggleLargeText}><span><b>Larger interface text</b><small>Increase labels and controls</small></span>{largeText && <Check size={15} />}</button><p>Press <kbd>?</kbd> for keyboard shortcuts.</p></div>}</div>
    <button className="theme-toggle" onClick={toggleTheme} aria-label={`Use ${theme === 'dark' ? 'light' : 'dark'} theme`}>{theme === 'dark' ? <Sun size={16} /> : <Moon size={16} />}</button>
    <input ref={importRef} hidden type="file" accept=".json,.spaghetdb.json" onChange={(event) => importProject(event.target.files?.[0])} />
  </header>
}
