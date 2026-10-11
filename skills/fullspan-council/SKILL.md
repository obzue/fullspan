---
name: fullspan-council
description: >
  Use before calling work done, merging, or shipping, and whenever a diff
  needs a second look. Fullspan review. Triggers on code review, PR review,
  "is this good", quality gate, self-review. Five axes: promise, correctness,
  craft, risk, size. Block on anything that breaks the promise or the trust
  boundary.
---

# Council

Review as if you did not write it. The question is not "does it look like effort." The question is "does it keep the promise without a new problem."

## Five axes

Score each pass, fail, or not-applicable. A fail on promise or risk blocks.

1. **Promise** — every done-when line is either met by evidence or explicitly still open. No silent scope cuts.
2. **Correctness** — the checks failed before the change and pass after it. You saw both, or you say you did not.
3. **Craft** — names match the domain, control flow is readable in one pass, the public surface is small.
4. **Risk** — trust boundaries, data loss, migrations, and irreversible steps are called out. `fullspan-shield` has been applied if any boundary moved.
5. **Size** — the diff is the slice, not a ride-along refactor. Unrelated edits get reverted or split.

## How to read

- Start from the promise, then the checks, then the diff. Not the other way around.
- Where the promise is silent, grade by what a reasonable user gets if this ships. Silence is not permission.
- Findings are specific: file, behavior, why it fails an axis, what would clear it.
- Severity is only: block, fix-soon, note. Blocks stop the release. Notes do not become homework unless the author asks.
- Praise does not offset a block.
- If you are reviewing your own work, write the findings before you reread your rationale. Your rationale will talk you out of real misses.

## Receiving findings

- A block gets reproduced, not argued from memory. If you cannot reproduce it, say what you ran.
- You may reject a finding that contradicts the promise. Say which line of the promise it contradicts. Do not reject it because it is annoying.
- Style nits that do not change behavior die, unless the project has a written rule.
- After fixes, re-check only the blocks and anything the fix could have disturbed. Do not restart the whole review as theater.

## Fresh eyes

For a large promise, a second pass from a cold context (another session, or `fullspan-swarm` with a reviewer who did not implement) reads promise versus diff only. They do not get your story about why it was hard.
