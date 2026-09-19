import { Link } from 'react-router-dom'

export function Brand({ compact = false }: { compact?: boolean }) {
  return <Link to="/" className="brand" aria-label="SpaghetDB home">
    <img className="brand-logo" src={`${import.meta.env.BASE_URL}icon.png`} alt="" width="28" height="28" />
    {!compact && <span>Spaghet<span>DB</span></span>}
  </Link>
}
