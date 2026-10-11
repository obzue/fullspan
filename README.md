# ObzueAI Super Intelligent

The house is **ObzueAI**. Spoken "Obzua" is the same house. Write Obzue.

Inside the house:

- **Fullspan** makes anything. Software, interfaces, documents, research, pictures, events, offers. One loop. The proof changes with the medium.
- **Corta** teaches. She asks before she takes a device, and she only proposes a step the host may run.
- **Presence** holds her voice and, when you approve a still, her face.

This is not a fork and not a mirror. The packs listed in [PROVENANCE.md](PROVENANCE.md) were read. Their wording was not copied.

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
| [obzueai](skills/obzueai/SKILL.md) | Name the house. Pick make, teach, or presence. |
| [obzueai-corta](skills/obzueai-corta/SKILL.md) | Teach from what they handed you. Consent before control. |
| [obzueai-presence](skills/obzueai-presence/SKILL.md) | Voice, personality, and a realistic face that stays the same. |
| [fullspan](skills/fullspan/SKILL.md) | Route the making. |
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
| [fullspan-awaken](skills/fullspan-awaken/SKILL.md) | Start from the index, not the whole past. |
| [fullspan-recall](skills/fullspan-recall/SKILL.md) | Open one matching record. Memory is evidence. |
| [fullspan-record](skills/fullspan-record/SKILL.md) | Store one atom. Supersede values that moved. |
| [fullspan-correct](skills/fullspan-correct/SKILL.md) | Replace a false belief and make the repeat catchable. |
| [fullspan-curate](skills/fullspan-curate/SKILL.md) | Keep the index short without deleting history. |

Twenty-eight skills. Three are the house: the name, the instructor membrane, and presence. Twenty are the MAKE loop. Five are recall.

## Install

Copy `skills/*` into the directory your agent reads.

- Claude Code: `~/.claude/skills/`
- Cursor: `~/.cursor/skills/`
- Codex: `~/.codex/skills/`
- This Grok app workspace: `.grok/skills/`

Each folder has a `SKILL.md`. Agents that follow the [Agent Skills](https://github.com/agentskills/agentskills) layout only need the name and description at startup. They should open the body when the description matches.

## License

[MIT](LICENSE). You can use this set, change it, and ship it. You cannot claim the studied upstream packs are yours, and you should not paste their text into a derivative and call it this set.
