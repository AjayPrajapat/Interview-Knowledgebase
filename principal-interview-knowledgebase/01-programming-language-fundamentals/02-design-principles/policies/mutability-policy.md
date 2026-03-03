# Mutability Policy
- Treat shared state as immutable by default.
- Mutations must be local and intention-revealing.
- Use readonly types at boundaries.
- Track large object copies in profiling.
