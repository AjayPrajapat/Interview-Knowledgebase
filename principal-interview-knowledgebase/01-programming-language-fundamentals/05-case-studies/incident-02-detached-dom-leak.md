# Incident 02: Detached DOM Leak

## Context
Production incident affecting reliability and developer velocity.

## Trigger
A language/runtime assumption failed under real traffic or deployment timing.

## Root Cause
Missing explicit contract at async/type/module boundary.

## Impact
User-visible errors, degraded latency, or memory growth.

## Fix
Patch immediate bug, add regression tests, and introduce policy guardrail.

## Prevention
Add checklist item, static rule, and observability signal.
