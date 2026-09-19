import Editor from '@monaco-editor/react'
import { FileUp, Play, RotateCcw } from 'lucide-react'
import { SAMPLE_SQL } from '../domain/examples'
import { useAppStore } from '../store/app-store'

export function SqlEditor() {
  const source = useAppStore((state) => state.project.source)
  const parsing = useAppStore((state) => state.parsing)
  const theme = useAppStore((state) => state.theme)
  const setSql = useAppStore((state) => state.setSql)
  const parse = useAppStore((state) => state.parse)
  const importFile = (file?: File) => {
    if (!file) return
    if (source.sql.trim() && !confirm('Replace the current SQL with this file?')) return
    file.text().then(setSql)
  }
  return <section className="editor-panel">
    <div className="panel-title"><div><span>SQL source</span><small>{source.sql.split('\n').length} lines</small></div><div><label className="icon-button" title="Import .sql"><FileUp size={15} /><span className="sr-only">Import SQL file</span><input type="file" accept=".sql,text/sql,text/plain" onChange={(event) => importFile(event.target.files?.[0])} /></label><button className="icon-button" title="Restore example" aria-label="Restore example SQL" onClick={() => confirm('Replace the current SQL with the example?') && setSql(SAMPLE_SQL[source.dialect])}><RotateCcw size={14} /></button></div></div>
    <Editor height="100%" language="sql" value={source.sql} theme={theme === 'dark' ? 'vs-dark' : 'light'} onChange={(value) => setSql(value ?? '')}
      options={{ minimap: { enabled: false }, fontFamily: 'IBM Plex Mono, monospace', fontSize: 12, lineHeight: 21, padding: { top: 18 }, scrollBeyondLastLine: false, wordWrap: 'on', overviewRulerBorder: false, renderLineHighlight: 'gutter', automaticLayout: true, accessibilitySupport: 'auto', stickyScroll: { enabled: false }, bracketPairColorization: { enabled: false } }}
      onMount={(editor, monaco) => editor.addCommand(monaco.KeyMod.CtrlCmd | monaco.KeyCode.Enter, parse)} />
    <div className="editor-footer"><span>Ctrl ↵ to parse</span><button onClick={parse} disabled={parsing}><Play size={14} fill="currentColor" /> {parsing ? 'Parsing…' : 'Parse schema'}</button></div>
  </section>
}
