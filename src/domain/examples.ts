import type { SqlDialect } from './types'

export const SAMPLE_SQL: Record<SqlDialect, string> = {
  postgresql: `CREATE SCHEMA commerce;
CREATE SCHEMA operations;

CREATE TABLE public.users (
  id UUID PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  full_name TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE public.organizations (
  id UUID PRIMARY KEY,
  slug VARCHAR(80) NOT NULL UNIQUE,
  name TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE public.memberships (
  organization_id UUID REFERENCES public.organizations(id),
  user_id UUID REFERENCES public.users(id),
  role VARCHAR(24) NOT NULL DEFAULT 'member',
  PRIMARY KEY (organization_id, user_id)
);

CREATE TABLE commerce.products (
  id UUID PRIMARY KEY,
  organization_id UUID NOT NULL REFERENCES public.organizations(id),
  sku VARCHAR(64) NOT NULL,
  name TEXT NOT NULL,
  price NUMERIC(12, 2) NOT NULL,
  UNIQUE (organization_id, sku)
);

CREATE TABLE commerce.orders (
  id UUID PRIMARY KEY,
  organization_id UUID NOT NULL REFERENCES public.organizations(id),
  customer_id UUID NOT NULL REFERENCES public.users(id),
  status VARCHAR(32) NOT NULL DEFAULT 'pending',
  total NUMERIC(12, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE commerce.order_items (
  order_id UUID REFERENCES commerce.orders(id),
  product_id UUID REFERENCES commerce.products(id),
  quantity INTEGER NOT NULL DEFAULT 1,
  unit_price NUMERIC(12, 2) NOT NULL,
  PRIMARY KEY (order_id, product_id)
);

CREATE TABLE commerce.payments (
  id UUID PRIMARY KEY,
  order_id UUID NOT NULL REFERENCES commerce.orders(id),
  provider_ref VARCHAR(120) UNIQUE,
  amount NUMERIC(12, 2) NOT NULL,
  paid_at TIMESTAMP
);

CREATE TABLE operations.shipments (
  id UUID PRIMARY KEY,
  order_id UUID NOT NULL UNIQUE REFERENCES commerce.orders(id),
  tracking_code VARCHAR(100) UNIQUE,
  shipped_at TIMESTAMP,
  delivered_at TIMESTAMP
);

CREATE TABLE operations.audit_events (
  id UUID PRIMARY KEY,
  actor_id UUID REFERENCES public.users(id),
  organization_id UUID REFERENCES public.organizations(id),
  event_type VARCHAR(80) NOT NULL,
  payload JSONB,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX orders_customer_idx ON commerce.orders(customer_id);
CREATE INDEX audit_org_created_idx ON operations.audit_events(organization_id, created_at);`,
  mysql: `CREATE TABLE users (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL UNIQUE,
  display_name VARCHAR(120) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE workspaces (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  owner_id BIGINT NOT NULL,
  slug VARCHAR(80) NOT NULL UNIQUE,
  CONSTRAINT workspaces_owner_fk FOREIGN KEY (owner_id) REFERENCES users(id)
);

CREATE TABLE projects (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  workspace_id BIGINT NOT NULL,
  name VARCHAR(160) NOT NULL,
  CONSTRAINT projects_workspace_fk FOREIGN KEY (workspace_id) REFERENCES workspaces(id)
);

CREATE TABLE environments (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  project_id BIGINT NOT NULL,
  name VARCHAR(80) NOT NULL,
  CONSTRAINT environments_project_fk FOREIGN KEY (project_id) REFERENCES projects(id),
  UNIQUE (project_id, name)
);

CREATE TABLE deployments (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  environment_id BIGINT NOT NULL,
  created_by BIGINT NOT NULL,
  git_sha CHAR(40) NOT NULL,
  status VARCHAR(24) NOT NULL DEFAULT 'queued',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT deployments_environment_fk FOREIGN KEY (environment_id) REFERENCES environments(id),
  CONSTRAINT deployments_user_fk FOREIGN KEY (created_by) REFERENCES users(id)
);

CREATE TABLE api_keys (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  workspace_id BIGINT NOT NULL,
  label VARCHAR(100) NOT NULL,
  token_hash CHAR(64) NOT NULL UNIQUE,
  CONSTRAINT api_keys_workspace_fk FOREIGN KEY (workspace_id) REFERENCES workspaces(id)
);

CREATE INDEX deployments_environment_idx ON deployments(environment_id, created_at);`,
  sqlite: `CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT NOT NULL UNIQUE,
  display_name TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notebooks (
  id INTEGER PRIMARY KEY,
  owner_id INTEGER NOT NULL REFERENCES users(id),
  title TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notes (
  id INTEGER PRIMARY KEY,
  notebook_id INTEGER NOT NULL REFERENCES notebooks(id),
  author_id INTEGER NOT NULL REFERENCES users(id),
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  pinned INTEGER NOT NULL DEFAULT 0,
  updated_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tags (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE note_tags (
  note_id INTEGER REFERENCES notes(id),
  tag_id INTEGER REFERENCES tags(id),
  PRIMARY KEY (note_id, tag_id)
);

CREATE TABLE attachments (
  id INTEGER PRIMARY KEY,
  note_id INTEGER NOT NULL REFERENCES notes(id),
  file_name TEXT NOT NULL,
  media_type TEXT,
  byte_size INTEGER NOT NULL
);

CREATE TABLE revisions (
  id INTEGER PRIMARY KEY,
  note_id INTEGER NOT NULL REFERENCES notes(id),
  editor_id INTEGER REFERENCES users(id),
  body TEXT NOT NULL,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX notes_notebook_idx ON notes(notebook_id, updated_at);
CREATE INDEX revisions_note_idx ON revisions(note_id, created_at);`,
}

export interface SchemaExample {
  id: string
  label: string
  description: string
  dialect: SqlDialect
  tableCount: number
  sql?: string
  path?: string
  stress?: boolean
}

export const SCHEMA_EXAMPLES: SchemaExample[] = [
  { id: 'postgres-commerce', label: 'Commerce platform', description: 'Organizations, catalog, checkout, and operations', dialect: 'postgresql', tableCount: 9, sql: SAMPLE_SQL.postgresql },
  { id: 'mysql-saas', label: 'SaaS deployments', description: 'Workspaces, projects, environments, and releases', dialect: 'mysql', tableCount: 6, sql: SAMPLE_SQL.mysql },
  { id: 'sqlite-notes', label: 'Publishing notebook', description: 'Notes, tags, revisions, and attachments', dialect: 'sqlite', tableCount: 7, sql: SAMPLE_SQL.sqlite },
  { id: 'stress-100', label: 'Stress test · 100 tables', description: 'A medium synthetic PostgreSQL schema', dialect: 'postgresql', tableCount: 100, path: 'examples/stress-100.sql', stress: true },
  { id: 'stress-500', label: 'Stress test · 500 tables', description: 'A large synthetic PostgreSQL schema', dialect: 'postgresql', tableCount: 500, path: 'examples/stress-500.sql', stress: true },
  { id: 'stress-1000', label: 'Stress test · 1,000 tables', description: 'An extreme synthetic PostgreSQL schema', dialect: 'postgresql', tableCount: 1000, path: 'examples/stress-1000.sql', stress: true },
]

export const HERO_SQL = `CREATE TABLE users (
  id UUID PRIMARY KEY,
  email VARCHAR(255) UNIQUE
);

CREATE TABLE posts (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id),
  title TEXT
);`
