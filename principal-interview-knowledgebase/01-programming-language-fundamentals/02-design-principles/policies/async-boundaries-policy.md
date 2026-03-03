# Async Boundaries Policy
- Define cancellation and timeout rules at every I/O boundary.
- Never fire-and-forget without telemetry and retry policy.
- Map external failures to typed internal errors.
- Use concurrency limits for fan-out calls.
