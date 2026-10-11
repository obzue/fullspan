---
name: fullspan-shield
description: >
  Use when work touches authentication, authorization, payments, private data,
  file uploads, HTML rendering, shell commands, queries built from input, or
  any public API. Fullspan trust-boundary skill. Triggers on security, OWASP,
  secrets, injection, XSS, permissions, privacy. Not a general code-style pass.
---

# Shield

Protect the edges. Do not bolt "security" onto internal code that never sees the outside.

## Before the slice

Name the boundary in one line: what crosses it, who is on the outside, what must never cross back.

If you cannot name an outside, you probably do not need this skill. Do not add ceremonial checks.

## Minimum bar

- **Identity** comes from the server-side session or a verified token. Never from a client-supplied user id, role, or price.
- **Authorization** is checked on the server for every read and write that is not world-public. Hiding a button is not authorization.
- **Input** is parsed into a strict shape at the edge. Reject the rest. Do not pass raw strings into HTML, SQL, shell, or file paths.
- **Output** encoding matches the sink. HTML is escaped. Shell arguments are not concatenated. Queries are parameterized.
- **Secrets** stay on the server. They are not committed, logged, or prefixed into a client bundle. If a platform injects them, read them at request time, not at import time in a way that breaks the host.
- **Least data.** Return the fields the caller needs. Do not dump a user record because it was convenient.
- **Dependencies.** A new package needs a reason that survived the least-work ladder. Prefer the platform.
- **Failures.** Auth failures say "no" without explaining which half was wrong. Internal errors do not leak stack traces or query text to the client.

## Threats worth a deliberate look

Injection (SQL, command, HTML, path), broken access control, secret leakage, insecure deserialization, unbounded uploads, CSRF on cookie sessions, and trusting a redirect target.

Skip the lecture if the slice does not touch them. If it does, the check from Assert should include one malicious input that must be rejected.

## Stop

You can point at the boundary, the check that tries to cross it wrongly, and the evidence that the cross failed closed.
