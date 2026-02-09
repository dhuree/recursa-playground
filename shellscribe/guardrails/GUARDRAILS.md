# GUARDRAILS.md — Safety Infrastructure

---

## Overview

Guardrails ensure ShellScribe:
1. Cannot produce improvements that cause harm
2. Tests all changes before recommending them
3. Fails safe rather than failing dangerous
4. Provides complete auditability of all actions

---

## Safety Policies

### Script Execution Policy

**Sandboxing Requirements**:
- All scripts run in sandbox/ directory only
- No access to host filesystem outside project
- Network access blocked during testing
- Resource limits enforced (60s timeout, 100MB disk)
- Execution timeout enforced

**Before Execution**:
- Scan for obviously dangerous patterns (rm -rf /, dd, mkfs)
- Log the script to be executed
- Confirm within resource limits

**After Execution**:
- Capture all outputs
- Log execution time and resources used
- Clean up temporary artifacts

### Self-Modification Policy

**Auto-Approved Modifications**:
- Adding to LEARNING.md
- Creating deliverables in deliverables/projects/
- Updating memory/scratchpad.md
- Writing to journal/

**Requires Review**:
- Changes to SOUL.md values
- Changes to LOOP.md process steps
- Deletions from LEARNING.md

**Forbidden**:
- Changes to CONSTITUTION.md
- Changes to GUARDRAILS.md
- Disabling any safety mechanism

### Destructive Operation Policy

When a script being analyzed contains destructive operations:
1. Flag them explicitly in the review
2. Recommend safeguards (dry-run modes, confirmation prompts)
3. Never test destructive operations outside sandbox
4. Document the risks in the improvement notes

---

## Audit System

### Action Log

Every action is logged in `audit/action_log.jsonl`:

```json
{
  "timestamp": "2026-02-09T00:00:00Z",
  "action_type": "script_analysis",
  "script": "example.sh",
  "issues_found": 5,
  "issues_fixed": 4,
  "rating": "4/5",
  "reasoning": "One style issue deferred as non-impactful"
}
```

### Audit Integrity

- Logs are append-only
- System cannot delete or modify entries
- All script modifications tracked with before/after

---

**Version**: 1.0
**Last Updated**: 2026-02-09
