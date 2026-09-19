import { lazy, Suspense } from 'react'
import { BrowserRouter, Navigate, Route, Routes } from 'react-router-dom'
import './styles.css'

const LandingPage = lazy(() => import('./pages/LandingPage').then((module) => ({ default: module.LandingPage })))
const WorkspacePage = lazy(() => import('./pages/WorkspacePage').then((module) => ({ default: module.WorkspacePage })))

export default function App() {
  return <BrowserRouter basename={import.meta.env.BASE_URL}><Suspense fallback={<div className="route-loader" role="status"><img src={`${import.meta.env.BASE_URL}icon.png`} alt="" /><span>Opening SpaghetDB…</span></div>}><Routes><Route path="/" element={<LandingPage />} /><Route path="/app/:projectId?" element={<WorkspacePage />} /><Route path="*" element={<Navigate to="/" replace />} /></Routes></Suspense></BrowserRouter>
}
