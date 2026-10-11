---
name: fullspan-assert
description: >
  Use immediately before creating the real artifact: feature, bugfix, page,
  doc, visual, plan, or offer. Fullspan Assert step. Write the check that can
  fail and watch it fail before production work. Triggers on TDD, tests first,
  acceptance, rubric, storyboard, "how will we know". Not for pure questions.
---

# Assert

No artifact before a check that can fail. If you already built it, set that work aside and write the check against the promise, not against what you happened to make.

## Pick the check by medium

| Medium | Failing check |
|---|---|
| Software behavior | One test naming the behavior. Run it. It fails because the behavior is absent, not because the test is broken. |
| Bug | A script, test, or exact click-path that reproduces the symptom. You have seen the failure. |
| Interface | The one job of the view, plus the empty, error, and too-small states written down. A screenshot or DOM check comes after the slice, but the job is written first. |
| Words | The single claim, the reader, and an outline of beats. Prose comes after the outline. |
| Research | The question, which sources count, and a stub where every unknown is the word "unknown". |
| Picture or motion | Subject, frame, what must not appear, and the one feeling. No generation before that note. |
| Event or physical thing | The moment of use, the materials, and the failure you are designing against. One page, before buying or booking. |
| Offer | Who shows up, what they get, what it costs them, what you will not promise. |

Code is the strictest form: the test runs red for the right reason. Other media use the same shape — a check you could fail in public.

## Code, specifically

1. Write one test. One behavior. A name that says what the user gets.
2. Run it. Read the failure.
3. If it fails for a typo, a missing import you did not mean, or an assertion that cannot be true, fix the test. Do not start the product.
4. If it fails because the behavior is missing, stop. That is red. Now `fullspan-slice` may write the smallest code that turns it green.
5. Prefer real collaborators over mocks. Mock only at a boundary you do not own.
6. Exceptions, and only if the person asks: a throwaway you will delete, generated boilerplate, or a config file with no behavior. Say which exception you are using.

Refactoring still starts red: a characterization check that locks today's behavior, then the change.

## After red

Hand the red check to `fullspan-slice`. Do not "sketch the implementation while you are here." The slice starts from the failure, not from a private draft.
