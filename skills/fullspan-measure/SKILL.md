---
name: fullspan-measure
description: >
  Use before optimizing speed, bundle size, memory, cost, or "make it faster".
  Fullspan measure-first skill. Triggers on performance, slow, lag, bundle,
  Core Web Vitals, profiling. Do not tune without a number and a target.
---

# Measure

A feeling is not a profile. Do not change code for speed until you have a number, a target, and a place the time or bytes actually go.

## Sequence

1. Say which number matters to the promise: response time, frame time, bundle weight, query count, money per run. One number.
2. Record it the way a stranger could re-record it. Same command, same data size, warm or cold stated.
3. Find the hottest slice of that number. A profiler, a waterfall, a query plan, or a bundle map. Not a hunch.
4. Change one thing that attacks that slice.
5. Record the number again. Keep the change only if the number moved and the behavior checks still pass.

If the number already meets the promise, stop. Optimization without a missed target is a new bug farm.

## Interface work

Look at the path the user actually waits on. A spinner on the one primary action matters more than a chart in the footer. Biggest content, input delay, and layout stability are the usual three for the web. Use them when the promise says "feels instant." Otherwise leave them alone.

## Do not

- Cache, memoize, or index as a habit.
- Add a worker, a queue, or a CDN to a problem you have not measured.
- Compare a debug build to a production build and call it a win.
- Trade correctness or a trust boundary for a number. Those outrank speed.
