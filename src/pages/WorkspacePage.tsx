import { useEffect, useState } from 'react'
import { HelpCircle, PanelLeftClose, PanelLeftOpen, PanelRightClose, PanelRightOpen, X } from 'lucide-react'
import { GraphCanvas } from '../components/GraphCanvas'
import { Inspector } from '../components/Inspector'
import { SearchPalette } from '../components/SearchPalette'
import { SqlEditor } from '../components/SqlEditor'
import { TopBar } from '../components/TopBar'
import { loadProjects } from '../services/persistence'
import { useAppStore } from '../store/app-store'

export function WorkspacePage() {
  const theme = useAppStore((state) => state.theme)
  const highContrast = useAppStore((state) => state.highContrast)
  const largeText = useAppStore((state) => state.largeText)
  const projectName = useAppStore((state) => state.project.project.name)
  const setProject = useAppStore((state) => state.setProject)
  const inspectTable = useAppStore((state) => state.inspectTable)
  const setFocus = useAppStore((state) => state.setFocus)
  const [editorOpen, setEditorOpen] = useState(true)
  const [inspectorOpen, setInspectorOpen] = useState(true)
  const [searchOpen, setSearchOpen] = useState(false)
  const [shortcutsOpen, setShortcutsOpen] = useState(false)
  const [highlighted, setHighlighted] = useState<string>()
  useEffect(() => {
    document.documentElement.dataset.theme = theme
    document.documentElement.dataset.contrast = highContrast ? 'high' : 'normal'
    document.documentElement.dataset.textSize = largeText ? 'large' : 'normal'
  }, [theme, highContrast, largeText])
  useEffect(() => { document.title = `${projectName} — SpaghetDB Workspace` }, [projectName])
  useEffect(() => {
    let active = true
    loadProjects().then(async (projects) => {
      if (!active) return
      if (projects.length) setProject(projects.sort((a, b) => b.project.updatedAt.localeCompare(a.project.updatedAt))[0])
      await useAppStore.getState().parse()
    })
    return () => { active = false }
  }, [setProject])
  useEffect(() => {
    const handler = (event: KeyboardEvent) => {
      if ((event.ctrlKey || event.metaKey) && event.key.toLowerCase() === 'k') { event.preventDefault(); setSearchOpen(true) }
      const target = event.target as HTMLElement | null
      if (event.key === '?' && !target?.closest('input, textarea, .monaco-editor')) setShortcutsOpen(true)
      if (event.key === 'Escape') { setShortcutsOpen(false); setFocus() }
    }
    window.addEventListener('keydown', handler)
    return () => window.removeEventListener('keydown', handler)
  }, [setFocus])
  const jump = (id: string) => { inspectTable(id); setHighlighted(id); setTimeout(() => setHighlighted(undefined), 1400) }
  return <main className={`workspace ${editorOpen ? '' : 'editor-closed'} ${inspectorOpen ? '' : 'inspector-closed'}`}>
    <a className="skip-link" href="#schema-canvas">Skip to schema canvas</a>
    <TopBar onSearch={() => setSearchOpen(true)} />
    <div className="workspace-grid">
      {editorOpen && <SqlEditor />}
      <div className="canvas-region" id="schema-canvas" tabIndex={-1}><button className="panel-toggle left" onClick={() => setEditorOpen((value) => !value)} aria-label="Toggle SQL editor">{editorOpen ? <PanelLeftClose size={16} /> : <PanelLeftOpen size={16} />}</button><GraphCanvas highlighted={highlighted} /><button className="panel-toggle right" onClick={() => setInspectorOpen((value) => !value)} aria-label="Toggle inspector">{inspectorOpen ? <PanelRightClose size={16} /> : <PanelRightOpen size={16} />}</button><button className="keyboard-help" onClick={() => setShortcutsOpen(true)} aria-label="Keyboard shortcuts"><HelpCircle size={16} /></button></div>
      {inspectorOpen && <Inspector />}
    </div>
    <SearchPalette open={searchOpen} onClose={() => setSearchOpen(false)} onJump={jump} />
    {shortcutsOpen && <div className="palette-backdrop" onMouseDown={() => setShortcutsOpen(false)}><section className="shortcut-dialog" role="dialog" aria-modal="true" aria-labelledby="shortcut-title" onMouseDown={(event) => event.stopPropagation()}><header><h2 id="shortcut-title">Keyboard shortcuts</h2><button onClick={() => setShortcutsOpen(false)} aria-label="Close keyboard shortcuts"><X size={17} /></button></header><dl><div><dt><kbd>Ctrl</kbd> <kbd>Enter</kbd></dt><dd>Parse the current SQL</dd></div><div><dt><kbd>Ctrl</kbd> <kbd>K</kbd></dt><dd>Search tables and columns</dd></div><div><dt><kbd>Enter</kbd></dt><dd>Inspect a focused table</dd></div><div><dt><kbd>F</kbd></dt><dd>Focus a table and its neighbors</dd></div><div><dt><kbd>?</kbd></dt><dd>Open this shortcut guide</dd></div><div><dt><kbd>Esc</kbd></dt><dd>Close dialogs or Focus Mode</dd></div></dl></section></div>}
    <div className="mobile-notice"><strong>SpaghetDB works best on a wider screen.</strong><p>You can inspect this project here, but use a tablet or desktop to edit the canvas.</p></div>
  </main>
}
