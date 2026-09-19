export type SqlDialect = 'postgresql' | 'mysql' | 'sqlite'
export type DiagnosticSeverity = 'error' | 'warning' | 'info'

export interface Diagnostic { id: string; severity: DiagnosticSeverity; message: string; line?: number; statement?: string }
export interface Namespace { id: string; name: string }
export interface Column { id: string; name: string; dataType: string; nullable: boolean; defaultValue?: string; primaryKey: boolean; unique: boolean; foreignKey: boolean; generated?: boolean }
export type ConstraintKind = 'primary' | 'foreign' | 'unique' | 'check'
export interface Constraint { id: string; name?: string; kind: ConstraintKind; columns: string[]; expression?: string; referencedTable?: string; referencedColumns?: string[] }
export interface Index { id: string; name: string; columns: string[]; unique: boolean }
export interface Table { id: string; namespace: string; name: string; columns: Column[]; constraints: Constraint[]; indexes: Index[]; isJunction: boolean }
export interface ColumnRef { tableId: string; columnId: string; columnName: string }
export interface Relationship { id: string; source: ColumnRef; target: ColumnRef; cardinality: 'one-to-one' | 'one-to-many'; optional: boolean; resolved: boolean; targetLabel?: string }
export interface SchemaModel { version: 1; dialect: SqlDialect; namespaces: Namespace[]; tables: Table[]; relationships: Relationship[]; diagnostics: Diagnostic[] }
export interface NodePosition { x: number; y: number }
export interface PersistedLayout { positions: Record<string, NodePosition>; pinned: string[]; viewport?: { x: number; y: number; zoom: number } }
export interface ProjectMetadata { id: string; name: string; createdAt: string; updatedAt: string }
export interface ProjectFile { format: 'spaghetdb'; version: 1; project: ProjectMetadata; source: { dialect: SqlDialect; sql: string }; schema: SchemaModel; layout: PersistedLayout }
export interface Project extends ProjectFile {}

export const qualifiedName = (table: Pick<Table, 'namespace' | 'name'>) =>
  table.namespace === 'public' || table.namespace === 'main' ? table.name : `${table.namespace}.${table.name}`
