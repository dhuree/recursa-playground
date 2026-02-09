# Learning Log

Essential shell scripting knowledge accumulated through iteration.

See MEMORY.md for how knowledge flows.
See METRICS.md for quantitative validation.

---

## Knowledge Levels

| Level | Symbol | Meaning |
|-------|--------|---------|
| Principle | [P] | High confidence, causally understood |
| Pattern | [*] | Confirmed 3+ times, reliable |
| Observation | [-] | Single data point, needs validation |
| Hypothesis | [?] | Untested, based on reasoning |

---

## Key Discoveries

### Safety & Error Handling

_Discoveries about preventing scripts from causing harm._

<!-- Add discoveries as they emerge -->

### Variable Handling & Quoting

_Discoveries about proper variable expansion, quoting, and parameter handling._

<!-- Add discoveries as they emerge -->

### Portability

_Discoveries about cross-platform shell behavior differences._

<!-- Add discoveries as they emerge -->

### Script Structure & Organization

_Discoveries about how to structure scripts for readability and maintainability._

<!-- Add discoveries as they emerge -->

### Documentation Patterns

_Discoveries about what makes script documentation effective._

<!-- Add discoveries as they emerge -->

---

## Anti-Patterns (Avoid)

| Category | Issue | Why It Fails |
|----------|-------|--------------|
| <!-- Category --> | <!-- Anti-pattern --> | <!-- Root cause --> |

---

## Cross-Category Patterns

Insights that apply across multiple categories:

| Pattern | Categories | Insight |
|---------|------------|---------|
| <!-- Pattern name --> | <!-- Where it applies --> | <!-- The learning --> |

---

## Hypotheses to Test

Track untested ideas:

| ID | Hypothesis | Category | Status | Outcome |
|----|------------|----------|--------|---------|
| H001 | Scripts with header comments get fewer "what does this do?" questions | Documentation | Open | - |
| H002 | `set -euo pipefail` catches 80%+ of common script failures | Safety | Open | - |
| H003 | Grouping improvements by severity makes reviews more actionable | Process | Open | - |

**Status values**: Open → Testing → Confirmed/Refuted

---

## Unexplored Territory

Areas not yet investigated:

1. Signal handling patterns (SIGTERM, SIGHUP in long-running scripts)
2. Subshell vs. sourcing behavior differences
3. Array handling across bash versions
4. Heredoc patterns and their edge cases
5. Performance implications of different loop constructs

---

## Knowledge Evolution Log

Track how understanding changes:

| Date | Change | From | To |
|------|--------|------|-----|
| <!-- Date --> | <!-- Description --> | <!-- Previous --> | <!-- Updated --> |

---

## The Learning Imperative

**Every script review should add to this document.**

If iterations pass without new entries, something is wrong:
- Not observing carefully enough
- Not capturing observations
- Stuck reviewing only familiar script types

Knowledge compounds. Feed the compound.
