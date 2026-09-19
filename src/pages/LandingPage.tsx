import { useEffect, useState } from 'react'
import { ArrowUpRight, Database, Eye, FileDown, LockKeyhole, Moon, Search } from 'lucide-react'
import { Link } from 'react-router-dom'
import { Brand } from '../components/Brand'
import { HeroDiagram } from '../components/HeroDiagram'
import { HERO_SQL } from '../domain/examples'

export function LandingPage() {
  const [sql, setSql] = useState(HERO_SQL)
  const [focused, setFocused] = useState(false)
  useEffect(() => { document.title = 'SpaghetDB — SQL Schema Visualizer & ERD Generator' }, [])
  return <main className="landing">
    <header className="landing-nav"><Brand /><nav><a href="#how">How it works</a><a href="#focus">Focus mode</a><Link className="nav-cta" to="/app">Open workspace <ArrowUpRight size={15} /></Link></nav></header>
    <section className="hero">
      <div className="hero-copy">
        <p className="coordinate">SCHEMA / 00° 00′</p>
        <h1>See the shape of your database.</h1>
        <p>Paste SQL. Trace relationships. Understand the system before you touch it.</p>
        <div className="hero-actions"><Link className="primary-action" to="/app">Map your schema <ArrowUpRight size={17} /></Link><span><LockKeyhole size={14} /> Your SQL stays in your browser</span></div>
      </div>
      <div className="hero-console">
        <div className="console-bar"><span><i /> live schema</span><span>PostgreSQL</span></div>
        <div className="console-body">
          <label className="hero-code"><span>SQL source</span><textarea value={sql} onChange={(event) => setSql(event.target.value)} spellCheck={false} aria-label="SQL preview" /></label>
          <div className="hero-output"><span>Relationship map</span><HeroDiagram focused={focused} /></div>
        </div>
        <button className="focus-demo" onClick={() => setFocused((value) => !value)}><Eye size={15} /> {focused ? 'Exit focus preview' : 'Preview focus mode'}</button>
      </div>
    </section>

    <section className="signal-strip" aria-label="Product facts"><span>PostgreSQL</span><span>MySQL</span><span>SQLite</span><span>Local-first</span><span>No account needed</span></section>

    <section className="method" id="how">
      <div className="section-heading"><p>From DDL to understanding</p><h2>A map, not another schema dump.</h2></div>
      <div className="steps">
        <article><span>01</span><Database /><h3>Paste the source</h3><p>Import a SQL file or work directly in the editor. Parse when you are ready.</p></article>
        <article><span>02</span><Search /><h3>Follow the graph</h3><p>Search any table or column, inspect constraints, and trace foreign keys.</p></article>
        <article><span>03</span><FileDown /><h3>Keep the picture</h3><p>Arrange the canvas, save locally, and export a crisp SVG or PNG.</p></article>
      </div>
    </section>

    <section className="focus-story" id="focus">
      <div><p className="coordinate">FOCUS MODE / DIRECT NEIGHBORS</p><h2>When the schema gets loud, isolate the signal.</h2><p>Double-click any table. SpaghetDB keeps its immediate relationship graph sharp and lets the rest recede without losing context.</p><Link to="/app">Try it with the sample schema <ArrowUpRight size={16} /></Link></div>
      <div className="focus-stage"><div className="ghost-table one">sessions</div><div className="ghost-table two">payments</div><div className="focus-node">users<span>5 direct relationships</span></div><div className="ghost-table three">logs</div><div className="ghost-table four">audit_events</div></div>
    </section>

    <footer><Brand /><p>Database diagrams without the database connection.</p><span><Moon size={14} /> Built for dark rooms and large schemas.</span></footer>
  </main>
}
