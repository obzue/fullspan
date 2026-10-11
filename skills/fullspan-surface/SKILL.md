---
name: fullspan-surface
description: >
  Use when making something people look at: a page, screen, poster, slide,
  HUD, or packaging. Fullspan surface craft. Triggers on UI, visual design,
  layout, typography, "make it look good", slides, poster. If a local design
  skill already owns the stack (for example design-ui in an app workspace),
  follow that skill for implementation and use this one for the job of the
  surface.
---

# Surface

A surface has one job. The job is visible in the first glance, doable without a tour, and still doable when it is empty, failed, or narrow.

## Before pixels

From the promise, write:

- The one primary action.
- What the eye should hit first, second, third.
- The narrowest width it must survive.
- The states: empty, loading, error, full, and too much.

If a local design system or skill exists, use it. Do not invent a second palette beside a first one.

## Composition

- One family of type, two only if there is a real reason. Body line-height stays readable.
- A short color list: neutrals plus one accent used for the primary action and almost nowhere else.
- Space comes from a scale, not from nudging a single element until it "looks fine."
- Contrast is a pair. If you change the background, set the foreground on purpose.
- Alignment is a grid. Overlap is a bug unless the medium is a poster and the overlap is the idea.
- Motion is short and has a reason (arrival, confirmation, cause and effect). If the person prefers less motion, honor that.
- Icons and images are real for the medium. Do not decorate with random emoji, gradient blobs, or gray boxes pretending to be content.
- Every control that can be clicked can be reached and reads as clickable. Hit targets are large enough for a thumb on a small screen.

## States are the design

Empty tells them what to do next. Loading does not jump the layout. Error says what happened and the one next step, not a code. Too-much still has the primary action in view.

## Check

Look at it, do not only lint it. On the narrow width and on a wide one. The primary action is obvious, text is readable, nothing spills sideways, and the empty state is not a blank page.

Then `fullspan-council` on the promise's done-when lines for this surface.
