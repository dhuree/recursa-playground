# Iteration Loop

The core cycle: Receive → Analyze → Improve → Test → Capture → Repeat

---

## Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                   SHELLSCRIBE ITERATION LOOP                      │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│     ┌──────────┐                                                │
│     │ RECEIVE  │  Get a script to improve                       │
│     └────┬─────┘                                                │
│          │                                                      │
│          ▼                                                      │
│     ┌──────────┐                                                │
│     │ ANALYZE  │  Understand intent, find issues                │
│     └────┬─────┘                                                │
│          │                                                      │
│          ▼                                                      │
│     ┌──────────┐                                                │
│     │ IMPROVE  │  Fix issues, add docs, harden                  │
│     └────┬─────┘                                                │
│          │                                                      │
│          ▼                                                      │
│     ┌──────────┐                                                │
│     │  TEST    │  Verify improvements work                      │
│     └────┬─────┘                                                │
│          │                                                      │
│          ▼                                                      │
│     ┌──────────┐                                                │
│     │ CAPTURE  │  Rate quality, log learnings                   │
│     └────┬─────┘                                                │
│          │                                                      │
│          └──────────────────────┐                               │
│                                 ▼                               │
│                            [REPEAT]                             │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Step 1: Receive

### Select a Script
```
□ Choose a script from tasks/queued/ or accept user input
□ Read the original script completely
□ Note the declared shell (#!/bin/bash vs #!/bin/sh)
□ Identify the runtime environment (Linux, macOS, CI/CD, etc.)
```

### Consult Memory
```
□ Read LEARNING.md for relevant shell patterns
□ Check METRICS.md for recent trends
□ Review similar past improvements in deliverables/
```

### Set Intent
```
□ What class of script is this? (deployment, build, utility, data processing)
□ What are the likely failure modes?
□ What hypotheses from LEARNING.md can I test here?
```

---

## Step 2: Analyze

### Read for Understanding
1. What does this script intend to do?
2. What are its inputs (args, env vars, files, stdin)?
3. What are its outputs (files, stdout, exit codes)?
4. What are its dependencies (commands, files, services)?

### Identify Issues (by severity)

**Critical (safety/correctness)**:
- Unquoted variable expansions
- Missing error handling (`set -e` or explicit checks)
- Unsafe `rm`, `mv`, or file operations
- Race conditions or TOCTOU bugs
- Credential/secret handling problems

**Important (robustness)**:
- Missing input validation
- No usage/help message
- Hardcoded paths or values
- No logging or progress output
- Missing cleanup on exit (trap handlers)

**Nice-to-have (clarity)**:
- Missing or misleading comments
- Inconsistent naming conventions
- Unnecessarily complex constructs
- Style inconsistencies

### Capture Observations
As you analyze, note:
```
□ Surprising patterns (good or bad)
□ Shell-specific gotchas encountered
□ Questions about intent that need clarification
```

---

## Step 3: Improve

### Apply Fixes (in priority order)

1. **Safety first**: Fix anything that could cause data loss or incorrect behavior
2. **Error handling**: Add `set -euo pipefail`, trap handlers, validation
3. **Documentation**: Add header comment, usage, inline explanations
4. **Robustness**: Handle edge cases, add input validation
5. **Clarity**: Simplify complex constructs, improve naming

### Script Header Template
```bash
#!/usr/bin/env bash
#
# script-name.sh — Brief description of what this script does
#
# Usage: script-name.sh [options] <arguments>
#
# Dependencies: list, of, required, commands
#

set -euo pipefail
```

### Document Every Change
For each improvement, record:
- What was changed
- Why it matters (the failure mode it prevents)
- Any trade-offs

---

## Step 4: Test

### Verification Checklist
```
□ Script parses without syntax errors (bash -n)
□ ShellCheck passes (or deviations are justified)
□ Core functionality preserved
□ Error cases handled (bad input, missing files, etc.)
□ Exit codes are meaningful
□ Cleanup runs on both success and failure
```

### Test in Sandbox
- Run in sandbox/ directory
- Test with expected inputs
- Test with edge-case inputs (empty strings, spaces in filenames, etc.)
- Verify error handling triggers correctly

---

## Step 5: Capture

### Rate the Output

| Rating | Criteria |
|--------|----------|
| 5/5 | Comprehensive: all issues fixed, well-documented, tested, teaches something new |
| 4/5 | Strong: major issues fixed, documented, minor items remain |
| 3/5 | Adequate: critical issues fixed, basic documentation added |
| 2/5 | Partial: some fixes applied but significant issues remain |
| 1/5 | Failed: improvements introduced new bugs or missed critical issues |

**This iteration's rating**: ___/5

### Update LEARNING.md
- What shell pattern did I encounter?
- What improvement technique worked?
- Any new anti-patterns to document?

### Log in METRICS.md
```markdown
| [Date] | [Script name] | [X/5] | [Category] | [Issues found/fixed] | [Notes] |
```

### Write Reflection
In journal/reflections/:
```markdown
## Script: [name]
**Date**: [Date]
**Rating**: [X/5]

### Issues Found
- [List of issues by severity]

### Improvements Made
- [List of improvements]

### What I Learned
- [New patterns or techniques]

### For Next Time
- [Actionable improvement to the process]
```

---

## Review Cycles

### After Every Script (Micro)
- Complete Steps 1-5 above

### Every 5 Scripts (Meso)
```markdown
## Retrospective: Scripts [X] to [Y]

### Quality Trend
- Average rating: [X/5]
- Most common issue category: [Category]
- Improvement success rate: [X]%

### Patterns Emerging
- What issues keep appearing?
- What improvements have the most impact?

### Process Changes
- Any adjustments to the analysis checklist?
- Any new patterns to add to LEARNING.md?
```

### Every 20 Scripts (Macro)
Full strategic review:
- Are improvements genuinely making scripts better?
- Is the analysis getting faster and more accurate?
- What categories of scripts are underserved?

---

## Anti-Patterns

| Anti-Pattern | Problem | Instead |
|--------------|---------|---------|
| Over-engineering simple scripts | Adds unnecessary complexity | Match improvement to script's purpose |
| Style-only changes | No real improvement to reliability | Focus on safety and correctness first |
| Ignoring the script's context | Improvements that don't fit the environment | Understand target platform and constraints |
| Skipping testing | Improvements might break things | Always test in sandbox |
| Copy-paste fixes | Misapplied patterns | Understand why each fix works |

---

## Exploration Mandate

Each iteration should include some exploration:

- Try a shell construct you haven't used in 5+ iterations
- Test a hypothesis from LEARNING.md
- Deliberately tackle a script category you're less comfortable with
- Research one shell behavior you're uncertain about

---

## The Loop Imperative

**Every script should leave the system smarter than before.**

The loop is not overhead—it is the mechanism of improvement.
