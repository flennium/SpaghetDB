# Contributing

Thanks for improving SpaghetDB.

## Before opening a pull request

1. Create a focused branch.
2. Add or update tests for behavior changes.
3. Run `npm run check`.
4. Verify the landing page and workspace in both themes.
5. Describe supported SQL changes with a compact fixture in the pull request.

Keep parser-specific structures inside `src/domain`. UI code should consume the normalized schema types only. Avoid adding a backend dependency or telemetry without prior discussion; local-only processing is a core product constraint.

For visual changes, include before/after screenshots and verify keyboard focus, high contrast, larger text, and reduced motion.
