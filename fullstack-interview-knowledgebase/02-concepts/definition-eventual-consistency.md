# Definition Eventual Consistency

Difficulty: Medium

Role: Backend

Stage: Technical

---

## Question

Define eventual consistency in distributed systems and explain when it is acceptable.

---

## What Interviewer Evaluates

The interviewer evaluates whether you can give a precise definition, avoid common misconceptions, and connect the concept to user-facing behavior and system guarantees.

---

## Key Concepts

- Eventual consistency definition and convergence
- Read-after-write behavior and stale reads
- Conflict resolution and reconciliation
- Product-level tolerance for temporary inconsistency
- Monitoring and correctness validation

---

## Explanation

Eventual consistency means replicas may temporarily diverge after a write, but if no new writes occur, all replicas converge to the same value over time. It does not mean random inconsistency forever; it means bounded or unbounded delay before convergence depending on the system design.

This model is useful when low latency and high availability are prioritized over immediate global consistency. Typical examples include social feeds, analytics counters, and geographically distributed read models where brief staleness is acceptable.

A strong engineering answer also explains mitigation patterns: version vectors, last-write-wins tradeoffs, CRDTs for merge safety, read repair, and user-experience tactics that reduce confusion during stale-read windows.

---

## Solution Approach

1. Define consistency expectation from the product perspective.
2. Identify operations that require strong consistency and those that do not.
3. Select replication and conflict-resolution strategy.
4. Add client and server safeguards for stale data scenarios.
5. Validate convergence using metrics and failure-injection tests.

---

## Example Answer

Eventual consistency is a replication model where updates propagate asynchronously, so reads can return stale values briefly. I would use it for features where temporary staleness is acceptable, like activity feeds, but avoid it for critical invariants like payment balance. In practice, I separate strongly consistent write paths from eventually consistent read models, then instrument replication lag and conflict rates to ensure user impact stays within agreed limits.

---

## Extra Notes

A common mistake is treating eventual consistency as only a database concern. API contracts and UI behavior must also communicate and handle temporary staleness.
