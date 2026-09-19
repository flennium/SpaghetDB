import type { SqlDialect } from './types'

export const SAMPLE_SQL: Record<SqlDialect, string> = {
  postgresql: `CREATE SCHEMA commerce;

CREATE TABLE public.users (
  id UUID PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE public.profiles (
  id UUID PRIMARY KEY,
  user_id UUID NOT NULL UNIQUE REFERENCES public.users(id),
  display_name TEXT
);

CREATE TABLE commerce.orders (
  id UUID PRIMARY KEY,
  user_id UUID NOT NULL REFERENCES public.users(id),
  status VARCHAR(32) DEFAULT 'pending',
  total NUMERIC(10, 2),
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE commerce.products (
  id UUID PRIMARY KEY,
  sku VARCHAR(64) UNIQUE,
  name TEXT NOT NULL,
  price NUMERIC(10, 2)
);

CREATE TABLE commerce.order_items (
  order_id UUID REFERENCES commerce.orders(id),
  product_id UUID REFERENCES commerce.products(id),
  quantity INTEGER NOT NULL DEFAULT 1,
  PRIMARY KEY (order_id, product_id)
);

CREATE INDEX orders_user_idx ON commerce.orders(user_id);`,
  mysql: `CREATE TABLE users (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  user_id BIGINT NOT NULL,
  title VARCHAR(255) NOT NULL,
  CONSTRAINT posts_user_fk FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX posts_user_idx ON posts(user_id);`,
  sqlite: `CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT NOT NULL UNIQUE,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notes (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES users(id),
  body TEXT,
  pinned INTEGER DEFAULT 0
);

CREATE INDEX notes_user_idx ON notes(user_id);`,
}

export const HERO_SQL = `CREATE TABLE users (
  id UUID PRIMARY KEY,
  email VARCHAR(255) UNIQUE
);

CREATE TABLE posts (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id),
  title TEXT
);`
