# Memory System

The memory system preserves shell scripting knowledge across iterations, enabling compound learning.

---

## Philosophy

Every script review teaches something. Memory ensures those lessons aren't lost.

### Core Principles

| Principle | Meaning |
|-----------|---------|
| **Nothing is lost** | Every discovery about shell behavior gets captured |
| **Everything connects** | Knowledge links to the scripts that produced it |
| **Patterns emerge** | Repeated observations become reliable heuristics |
| **System reflects** | Regular meta-analysis of what we're learning |

---

## Memory Architecture

### Document Hierarchy

```
docs/
├── MEMORY.md       # This file: how memory works
├── LEARNING.md     # Long-term shell scripting knowledge
├── METRICS.md      # Quantitative tracking of improvements
├── EVOLUTION.md    # Self-improvement changelog
└── LOOP.md         # Iteration process
```

### Memory Flow

```
OBSERVE ──→ CAPTURE ──→ CONNECT ──→ VALIDATE ──→ APPLY
   │           │           │           │           │
   ▼           ▼           ▼           ▼           ▼
See shell   Record in   Link to     Confirm    Use for
behavior    LEARNING    existing    pattern    next review
```

---

## Knowledge Types

### 1. Shell Behavior Facts
Objective truths about how shells work.

**Format**:
```markdown
- **[Discovery]**: [Description]
  - First observed: [script/context]
  - Confirmed by: [subsequent validations]
  - Conditions: [when this applies — bash version, OS, etc.]
```

### 2. Improvement Procedures
Methods and techniques for improving scripts.

**Format**:
```markdown
### [Technique Name]
**Steps**:
1. [Step one]
2. [Step two]
**Key insight**: [Critical understanding]
**Avoid**: [Common mistakes when applying this]
```

### 3. Heuristic Knowledge
Rules of thumb from pattern recognition.

**Format**:
```markdown
### [Heuristic Name]
**Rule**: [The heuristic]
**Confidence**: [High/Medium/Low]
**Based on**: [Number of observations]
**Exceptions**: [When it doesn't apply]
```

### 4. Anti-Knowledge
What doesn't work and why.

**Format**:
```markdown
### [Anti-Pattern Name]
**Avoid**: [What not to do]
**Why it fails**: [Root cause — the specific failure mode]
**Instead**: [What to do instead]
```

---

## Knowledge Levels

Track confidence in each piece of knowledge:

| Level | Symbol | Meaning | Criteria |
|-------|--------|---------|----------|
| Principle | [P] | High confidence, understood causally | 5+ confirmations, mechanism clear |
| Pattern | [*] | Reliable heuristic | 3+ confirmations |
| Observation | [-] | Single data point | 1 confirmation |
| Hypothesis | [?] | Untested idea | 0 confirmations |

### Promotion Path
```
Hypothesis [?] ──→ Observation [-] ──→ Pattern [*] ──→ Principle [P]
     │                   │                  │                │
     └───────────────────┴──────────────────┴────────────────┘
              (Confirmation promotes, contradiction demotes)
```

---

## Memory Operations

### Capture (Every Iteration)

After each script review:

```markdown
## Iteration [N] Capture

### Discoveries
- [What was learned about shell behavior or improvement techniques]

### Confirmations
- [Previous knowledge validated by this script]

### Contradictions
- [Previous beliefs challenged]

### Questions
- [New questions raised about shell behavior]

### Metrics
- [Issues found, issues fixed, rating]
```

### Connect (Regularly)

Link new knowledge to existing:
1. Does this new discovery relate to an existing pattern?
2. Does it strengthen or weaken existing beliefs?
3. Are cross-cutting patterns emerging across script categories?

### Validate (Every 5 Iterations)

During retrospectives:
1. Which observations are ready for promotion to patterns?
2. Any contradictions to resolve?
3. Any outdated knowledge to prune?

### Apply (Every Iteration)

Before analyzing a script:
1. What does LEARNING.md say about this type of script?
2. What patterns apply to the issues I'm seeing?
3. What anti-patterns should I watch for?

---

## The Memory Imperative

**The goal: Each script review benefits from every previous review.**

Memory is not optional overhead—it is the mechanism of intelligence.
