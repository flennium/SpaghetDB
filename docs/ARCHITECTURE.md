# Architecture

SpaghetDB is a static React application. It has no server runtime and does not transmit schema contents.

## Data flow

1. The editor sends SQL and the selected dialect to `parser.worker.ts`.
2. The worker parses statements independently so one invalid statement does not discard valid tables.
3. `schema.ts` converts parser output into the stable `SchemaModel` contract.
4. The canvas, inspector, statistics, search, exporters, and persistence layer consume only that model.
5. ELK layout runs in a separate worker and returns positions; it never mutates schema data.

## State and persistence

Zustand owns the active project and transient UI state. Components subscribe to narrow state slices so editing SQL does not wake the graph. IndexedDB writes are debounced and store a versioned `ProjectFile`, including source SQL, normalized schema, pinned nodes, and positions.

The project-file version must change before making a breaking persistence change. Newer unsupported files are rejected rather than overwritten.

## Performance boundaries

- SQL parsing is interruptible: starting a new parse terminates the stale worker.
- Graph layout never blocks the main thread.
- React Flow mounts visible nodes only.
- Node components are memoized and positions are committed after drag completion.
- The landing and workspace routes are split; editor and graph dependencies do not load on the landing page.

## Adding a dialect feature

Add fixtures first, then normalize the parser-specific shape inside the domain layer. Do not leak parser AST fields into components. Equivalent DDL across dialects should produce equivalent `SchemaModel` assertions.
