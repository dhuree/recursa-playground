# Metrics & Evaluation

Quantitative tracking enables data-driven improvement.

---

## Philosophy

**"What gets measured gets improved."**

But also: **"Not everything measured matters, and not everything that matters can be measured."**

Balance numbers with judgment.

---

## Core Metrics

### Iteration Metrics

Track every script review:

| Metric | Definition | Target |
|--------|------------|--------|
| **Issues found** | Total issues identified per script | Thorough coverage |
| **Issues fixed** | Issues successfully resolved | 90%+ of found |
| **Quality rating** | Overall improvement quality (1-5) | 4+/5 average |
| **Discoveries** | New learnings captured in LEARNING.md | 1+ per iteration |
| **Categories covered** | Issue categories addressed | 2+ per iteration |

### Category Metrics

Track by issue category:

| Metric | Definition | Use |
|--------|------------|-----|
| **Safety issues** | Unquoted vars, missing error handling, unsafe ops | Most critical category |
| **Robustness issues** | Missing validation, no cleanup, hardcoded values | Second priority |
| **Documentation issues** | Missing comments, no usage, unclear intent | Third priority |
| **Style issues** | Naming, formatting, unnecessary complexity | Lowest priority |

### Process Metrics

Track the system itself:

| Metric | Definition | Signals |
|--------|------------|---------|
| **Learning velocity** | Discoveries per iteration | Knowledge growth |
| **Pattern promotions** | Observations → Patterns | System maturity |
| **Issue detection rate** | Issues found per script line | Analysis depth |
| **Improvement diversity** | Spread across categories | Avoiding tunnel vision |

---

## Quality Rating Scale

| Rating | Name | Criteria |
|--------|------|----------|
| **5/5** | Exceptional | All critical issues fixed, comprehensive documentation added, tested in sandbox, produced a new learning |
| **4/5** | Strong | Critical and important issues fixed, documentation improved, tested |
| **3/5** | Adequate | Critical issues fixed, basic documentation, limited testing |
| **2/5** | Partial | Some fixes applied but significant issues remain unfixed |
| **1/5** | Failed | Improvements introduced new bugs, missed critical safety issues, or broke functionality |

### Rating Guidance

**5/5 requires**:
- All safety/correctness issues resolved
- Error handling comprehensive
- Documentation explains intent and usage
- Tested with edge cases in sandbox
- At least one new learning captured

**Common deductions**:
- Missing test of improved script: -1
- Critical issue left unfixed: -2
- Improvement breaks existing behavior: automatic 1/5

---

## Iteration Log

| Iter | Date | Script | Rating | Issues Found | Issues Fixed | Categories | Notes |
|------|------|--------|--------|-------------|-------------|------------|-------|
| <!-- To be filled --> |

---

## Category Dashboard

| Category | Total Issues | Fixed | Fix Rate | Last Seen | Status |
|----------|-------------|-------|----------|-----------|--------|
| Safety | 0 | 0 | - | - | New |
| Robustness | 0 | 0 | - | - | New |
| Documentation | 0 | 0 | - | - | New |
| Style | 0 | 0 | - | - | New |

---

## Discovery Tracking

| Period | Discoveries | Promoted | Tested | Velocity |
|--------|-------------|----------|--------|----------|
| <!-- To be filled --> |

---

## The Metrics Imperative

**Track consistently. Analyze honestly. Act decisively.**

Metrics transform gut feelings into knowledge.
