# Debug Drills
1. Memory grows after route changes; identify detached DOM references and stale closures.
2. API responses are duplicated; debug async race and missing idempotency key.
3. `UnhandledPromiseRejectionWarning`; trace missing `await` and swallowed `.catch`.
4. Sporadic `Cannot read property` errors; inspect type narrowing gaps.
5. Circular import yields undefined config at startup; break module cycle.
