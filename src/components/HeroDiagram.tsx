const users = ['◆ id        UUID', '◇ email     VARCHAR(255)']
const posts = ['◆ id        UUID', '↗ user_id   UUID', '  title     TEXT']

export function HeroDiagram({ focused = false }: { focused?: boolean }) {
  return <div className={`hero-diagram ${focused ? 'is-focused' : ''}`} aria-label="Database relationship preview">
    <div className="mini-table users-table"><strong>users</strong>{users.map((row) => <code key={row}>{row}</code>)}</div>
    <svg viewBox="0 0 180 90" aria-hidden="true"><path d="M90 0 V90" /><circle cx="90" cy="8" r="3" /><path d="M84 83h12M86 88l4-5 4 5" /></svg>
    <div className="mini-table posts-table"><strong>posts</strong>{posts.map((row) => <code key={row}>{row}</code>)}</div>
    <span className="relation-one">1</span><span className="relation-many">N</span>
  </div>
}
