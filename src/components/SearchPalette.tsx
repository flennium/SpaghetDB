import { useEffect, useMemo, useRef, useState } from 'react'
import { Box, CornerDownLeft, Search } from 'lucide-react'
import { qualifiedName } from '../domain/types'
import { useAppStore } from '../store/app-store'

export function SearchPalette({ open, onClose, onJump }: { open: boolean; onClose: () => void; onJump: (id: string) => void }) {
  const [query, setQuery] = useState('')
  const [activeIndex, setActiveIndex] = useState(0)
  const input = useRef<HTMLInputElement>(null)
  const schema = useAppStore((state) => state.project.schema)
  useEffect(() => { if (open) { // eslint-disable-next-line react/set-state-in-effect
    setQuery(''); setActiveIndex(0); setTimeout(() => input.current?.focus(), 0) } }, [open])
  useEffect(() => { const handler = (event: KeyboardEvent) => { if (event.key === 'Escape') onClose() }; window.addEventListener('keydown', handler); return () => window.removeEventListener('keydown', handler) }, [onClose])
  const results = useMemo(() => {
    const needle = query.toLowerCase().trim()
    return schema.tables.flatMap((table) => {
      const name = qualifiedName(table)
      const rows = [{ id: table.id, table: name, label: name, type: 'table', score: name.toLowerCase() === needle ? 0 : name.toLowerCase().startsWith(needle) ? 1 : 2 }]
      table.columns.forEach((column) => rows.push({ id: table.id, table: name, label: `${name}.${column.name}`, type: column.dataType, score: column.name.toLowerCase() === needle ? 0 : 3 }))
      return rows
    }).filter((row) => !needle || row.label.toLowerCase().includes(needle)).sort((a, b) => a.score - b.score).slice(0, 9)
  }, [query, schema.tables])
  const choose = (index: number) => { const result = results[index]; if (!result) return; onJump(result.id); onClose() }
  const onKeyDown = (event: React.KeyboardEvent<HTMLInputElement>) => {
    if (event.key === 'ArrowDown') { event.preventDefault(); setActiveIndex((value) => Math.min(value + 1, results.length - 1)) }
    if (event.key === 'ArrowUp') { event.preventDefault(); setActiveIndex((value) => Math.max(value - 1, 0)) }
    if (event.key === 'Enter') { event.preventDefault(); choose(activeIndex) }
  }
  if (!open) return null
  return <div className="palette-backdrop" onMouseDown={onClose}><div className="search-palette" onMouseDown={(event) => event.stopPropagation()} role="dialog" aria-modal="true" aria-label="Search schema"><div className="palette-input"><Search size={18} /><input ref={input} value={query} onChange={(event) => { setQuery(event.target.value); setActiveIndex(0) }} onKeyDown={onKeyDown} placeholder="Search users.email or any table…" aria-label="Search tables and columns" aria-controls="schema-search-results" aria-activedescendant={results[activeIndex] ? `search-result-${activeIndex}` : undefined} /></div><div className="palette-results" id="schema-search-results" role="listbox">{results.map((result, index) => <button id={`search-result-${index}`} role="option" aria-selected={index === activeIndex} className={index === activeIndex ? 'active' : ''} key={`${result.label}-${index}`} onMouseEnter={() => setActiveIndex(index)} onClick={() => choose(index)}><Box size={14} /><span><strong>{result.label}</strong><small>{result.type === 'table' ? 'Table' : `${result.table} · ${result.type}`}</small></span>{index === activeIndex && <CornerDownLeft size={13} />}</button>)}{!results.length && <p>No matching table or column.</p>}</div><div className="palette-help"><span>↑↓ navigate</span><span>↵ open</span><span>esc close</span></div></div></div>
}
