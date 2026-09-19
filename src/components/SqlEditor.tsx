import Editor from '@monaco-editor/react'
import { FileUp, Play } from 'lucide-react'
import { useState } from 'react'
import { SCHEMA_EXAMPLES } from '../domain/examples'
import { useAppStore } from '../store/app-store'

export function SqlEditor() {
  const source = useAppStore((state) => state.project.source)
  const parsing = useAppStore((state) => state.parsing)
  const theme = useAppStore((state) => state.theme)
  const setSql = useAppStore((state) => state.setSql)
  const loadSource = useAppStore((state) => state.loadSource)
  const parse = useAppStore((state) => state.parse)
  const [loadingExample, setLoadingExample] = useState(false)
  const importFile = (file?: File) => {
    if (!file) return
    if (source.sql.trim() && !confirm('Replace the current SQL with this file?')) return
    file.text().then(setSql)
  }
  const loadExample = async (id: string) => {
    const example = SCHEMA_EXAMPLES.find((item) => item.id === id)
    if (!example || (source.sql.trim() && !confirm(`Replace the current SQL with “${example.label}”?`))) return
    setLoadingExample(true)
    try {
      let sql: string
      if (example.sql) {
        sql = example.sql
      } else {
        if (!example.path) throw new Error(`No source is configured for ${example.label}`)
        sql = await fetch(`${import.meta.env.BASE_URL}${example.path}`).then((response) => {
          if (!response.ok) throw new Error(`Could not load ${example.label}`)
          return response.text()
        })
      }
      loadSource(example.dialect, sql)
      await useAppStore.getState().parse()
    } catch (error) {
      alert(error instanceof Error ? error.message : 'Could not load the example')
    } finally {
      setLoadingExample(false)
    }
  }
  return <section className="editor-panel">
    <div className="panel-title"><div><span>SQL source</span><small>{source.sql.split('\n').length} lines</small></div><div><select className="example-select" aria-label="Load an example schema" value="" disabled={loadingExample || parsing} onChange={(event) => void loadExample(event.target.value)}><option value="" disabled>{loadingExample ? 'Loading…' : 'Examples'}</option><optgroup label="Realistic schemas">{SCHEMA_EXAMPLES.filter((item) => !item.stress).map((item) => <option key={item.id} value={item.id}>{item.label} · {item.tableCount}</option>)}</optgroup><optgroup label="Stress tests">{SCHEMA_EXAMPLES.filter((item) => item.stress).map((item) => <option key={item.id} value={item.id}>{item.label}</option>)}</optgroup></select><label className="icon-button" title="Import .sql"><FileUp size={15} /><span className="sr-only">Import SQL file</span><input type="file" accept=".sql,text/sql,text/plain" onChange={(event) => importFile(event.target.files?.[0])} /></label></div></div>
    <Editor height="100%" language="sql" value={source.sql} theme={theme === 'dark' ? 'vs-dark' : 'light'} onChange={(value) => setSql(value ?? '')}
      options={{ minimap: { enabled: false }, fontFamily: 'IBM Plex Mono, monospace', fontSize: 12, lineHeight: 21, padding: { top: 18 }, scrollBeyondLastLine: false, wordWrap: 'on', overviewRulerBorder: false, renderLineHighlight: 'gutter', automaticLayout: true, accessibilitySupport: 'auto', stickyScroll: { enabled: false }, bracketPairColorization: { enabled: false } }}
      onMount={(editor, monaco) => editor.addCommand(monaco.KeyMod.CtrlCmd | monaco.KeyCode.Enter, parse)} />
    <div className="editor-footer"><span>Ctrl ↵ to parse</span><button onClick={parse} disabled={parsing}><Play size={14} fill="currentColor" /> {parsing ? 'Parsing…' : 'Parse schema'}</button></div>
  </section>
}
