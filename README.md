# Fullspan

An original skill set for making anything. Software, interfaces, documents, research, pictures, events, offers. One loop. The proof changes with the medium.

This is not a fork and not a mirror. The packs listed in [PROVENANCE.md](PROVENANCE.md) were read or indexed. Their wording was not copied. Fullspan is a new canon.

## The loop

**MAKE**

1. **Map** — who it is for, the job, what done looks like, what it is not.
2. **Assert** — a check that can fail, seen failing, before the real artifact.
3. **Keep** — the smallest slice that makes the check pass. Climb the least-work ladder before writing anything new.
4. **Examine** — evidence from this turn, then review. Only then say done.

Direct orders from the person you are working with, and the project instructions of the environment, outrank these skills.

## Skills

| Skill | When |
|---|---|
| [fullspan](skills/fullspan/SKILL.md) | Route the work. Start here. |
| [fullspan-map](skills/fullspan-map/SKILL.md) | The job is still fuzzy. One question at a time. |
| [fullspan-promise](skills/fullspan-promise/SKILL.md) | Freeze a one-page promise. |
| [fullspan-assert](skills/fullspan-assert/SKILL.md) | Write the failing check for this medium. |
| [fullspan-slice](skills/fullspan-slice/SKILL.md) | Build only what turns the check green. |
| [fullspan-hunt](skills/fullspan-hunt/SKILL.md) | Something is wrong. Find the layer before you patch. |
| [fullspan-council](skills/fullspan-council/SKILL.md) | Review: promise, correctness, craft, risk, size. |
| [fullspan-pare](skills/fullspan-pare/SKILL.md) | After green, delete what is not load-bearing. |
| [fullspan-shield](skills/fullspan-shield/SKILL.md) | A trust boundary moved. |
| [fullspan-measure](skills/fullspan-measure/SKILL.md) | No tuning without a number. |
| [fullspan-release](skills/fullspan-release/SKILL.md) | Leave the workbench with a way back. |
| [fullspan-scout](skills/fullspan-scout/SKILL.md) | Facts and official docs, separated from guesses. |
| [fullspan-surface](skills/fullspan-surface/SKILL.md) | Something people look at. |
| [fullspan-voice](skills/fullspan-voice/SKILL.md) | Something people read. |
| [fullspan-swarm](skills/fullspan-swarm/SKILL.md) | Independent chunks, in parallel. |
| [fullspan-relay](skills/fullspan-relay/SKILL.md) | Hand the state to the next session. |
| [fullspan-doubt](skills/fullspan-doubt/SKILL.md) | Irreversible, public, or safety-touching. |
| [fullspan-after](skills/fullspan-after/SKILL.md) | One memory from the session. |
| [fullspan-author](skills/fullspan-author/SKILL.md) | Write a new skill from a repeated miss. |
| [fullspan-isolate](skills/fullspan-isolate/SKILL.md) | Keep the experiment off the main line. |

Twenty skills. Domain encyclopedias (every cloud API, every framework idiom) do not live here. When a vendor procedure will be repeated, `fullspan-scout` takes a note and `fullspan-author` grows one thin skill. That is how the set stays able to build anything without going stale on day one.

## Install

Copy `skills/*` into the directory your agent reads.

- Claude Code: `~/.claude/skills/`
- Cursor: `~/.cursor/skills/`
- Codex: `~/.codex/skills/`
- This Grok app workspace: `.grok/skills/`

Each folder has a `SKILL.md`. Agents that follow the [Agent Skills](https://github.com/agentskills/agentskills) layout only need the name and description at startup. They should open the body when the description matches.

## License

[MIT](LICENSE). You can use this set, change it, and ship it. You cannot claim the studied upstream packs are yours, and you should not paste their text into a derivative and call it Fullspan.
