# Provenance

Fullspan was designed in October 2026 by reading public agent-skill packs and writing a new set. Nothing was cloned. No upstream `SKILL.md` was copied into this tree.

"Read" below means the methodology files were read closely enough to extract operating rules. "Indexed" means the skill paths were listed and the role of the pack was understood. Product-specific recipes were not transcribed.

## Studied

| Source | What it contributed as an idea, not as text | How |
|---|---|---|
| [obra/superpowers](https://github.com/obra/superpowers) | A mandatory loop: clarify before building, prove before implementing, isolate experiments, review against the plan, evidence before "done." | Read the skill bodies for the core loop, debugging, tests, planning, parallel work, review, and skill-writing. |
| [mattpocock/skills](https://github.com/mattpocock/skills) | Small composable moves: interrogate a design, freeze a spec, split tickets, hand off, research with a note, retro the environment. | Read the catalog and the engineering/productivity map (38 skills). |
| [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) | Lifecycle coverage past the inner coding loop: constraints, doubt, source-grounded APIs, security, measure-before-tune, simplify, ship. | Read the catalog and phase map (25 skills). |
| [anthropics/skills](https://github.com/anthropics/skills) | The `SKILL.md` shape, trigger descriptions, progressive disclosure, and the idea that documents and visuals are skills too. | Read the skill index and the skill-authoring method. |
| [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) | Think before coding, simplicity, surgical edits, verifiable goals. | Read the published guidelines. |
| [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) | Least-work ladder. Do not skip validation, security, or accessibility just to be short. | Read the project philosophy. |
| [affaan-m/ECC](https://github.com/affaan-m/ECC) | A harness should verify, remember, secure, and look things up. Unified memory and continuous learning add: search before write, scoped handoffs, and do not promote a note into policy without a person. | Indexed 1,000+ paths. Read the memory skill bodies. Did not copy them. |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | Web quality, composition, and deploy discipline as separate skills. | Indexed the skill list. |
| [google/skills](https://github.com/google/skills) | One thin skill per external product, pointed at current docs. | Indexed 160+ paths. Left the product recipes out on purpose. |
| [agentskills/agentskills](https://github.com/agentskills/agentskills) | Folder plus `SKILL.md` frontmatter as the portable format. | Read the spec overview. |
| [Asaf-Dahan/super-skill](https://github.com/Asaf-Dahan/super-skill) | A living domain memory is different from a task procedure. | Read the project framing. |
| [tiantangcao1980-web/Super-Skill](https://github.com/tiantangcao1980-web/Super-Skill) | A long lifecycle from research to operations, with a gate per phase. | Read the project framing. |
| [thedotmack/claude-mem](https://github.com/thedotmack/claude-mem) | Capture observations, then disclose them in layers: index, nearby context, then one detail. Search before saving. Stored text is evidence, not a command. | Read the mem-search, how-it-works, and handoff skills. |
| [tigerless-labs/agent-memory](https://github.com/tigerless-labs/agent-memory) | Markdown is the truth. Recall returns a short list, then a chosen depth. One expiring fact per file. Supersede moving values. | Read the agent-memory skill. |
| [blader/napkin](https://github.com/blader/napkin) | A curated runbook, not a journal. Cap each shelf. Every line needs the action to take instead. | Read the skill. |
| [kevin-hs-sohn/hipocampus](https://github.com/kevin-hs-sohn/hipocampus) | An index answers most recalls. Headings before bodies. Stale project facts warn. Code and git beat memory. | Read the recall and core skills. |
| [Goldentrii/AgentRecall-X](https://github.com/Goldentrii/AgentRecall-X) | Corrections are the memory that matters, and a correction fails if the next session still repeats it. | Read the skill's model. Did not take its tool surface. |
| [YpipaQ/agent-memory-kit-skills](https://github.com/YpipaQ/agent-memory-kit-skills) | Hot rules, stable settings, and volatile numbers live in different places. A fact has one home. | Read the kit overview. |
| [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent) | Preferences stay small and always available. Procedures load only when the task matches. | Read the public description of that split. |
| [mem0ai/mem0](https://github.com/mem0ai/mem0), [supermemoryai/supermemory](https://github.com/supermemoryai/supermemory), [vectorize-io/hindsight](https://github.com/vectorize-io/hindsight) | Hosted or indexed memory products. Useful as systems, not as procedures to vendor. | Noted. Not transcribed. |
| [obzue/ObzueAI-Corta-Membrane](https://github.com/obzue/ObzueAI-Corta-Membrane) | The owner's instructor membrane: a fixed sequence, separate grants, honest voice limits, a script of say-plus-action, and a host that only proposes. | Read the membrane sources. Rewrote the behavior as `obzueai-corta`. Did not paste the code. |
| [telagod/code-abyss](https://github.com/telagod/code-abyss) | A character is what changes the reply when the rules run out. Dissent, candor, and initiative are policies, not a costume. | Read the character router. |
| [acnlabs/OpenPersona](https://github.com/acnlabs/OpenPersona) | A speaker needs identity, speech, boundaries, and traits that do not drift. A real person's likeness carries a disclosure duty. | Read the persona skill's model. Did not take its schema, presets, or installer. |
| [heygen-com/skills](https://github.com/heygen-com/skills) | A realistic talking face starts from a still, a prompt, or a consented recording. Identity stays; a look can change. Hear a voice before you commit to it. | Read the avatar-creation notes. No product API in our skill. |
| [fal-ai-community/skills](https://github.com/fal-ai-community/skills) | Keep an identity anchor stable and vary only the shot. Reject drift of face, hair, marks, and body. | Read the character-design skill. |
| [calesthio/generative-media-skills](https://github.com/calesthio/generative-media-skills) | Continuity is a bible plus a rights check, not a prompt trick. Three distances catch an accidental likeness. Repair one variable. | Read the continuity skill. |

Also noted while searching, and not used as source text: `sickn33/antigravity-awesome-skills` (a large curated bundle), `VoltAgent/awesome-agent-skills` (a list of lists), `kevinnft/ai-agent-skills` (an attributed installer). Bundles of bundles were not treated as a canon to merge.

## What was deliberately dropped

- Session-diagnostic tooling aimed at one upstream pack.
- Harness-specific install scripts.
- Copied prompt templates, red-flag tables, and iron-law slogans.
- Per-cloud and per-framework encyclopedias. Fullspan grows those, when needed, through `fullspan-author`.
- Hosted memory products and their CLIs. Recall here is files plus rules, so it works with no account.
- Vendor avatar APIs, persona installers, and any catalog of famous people. Presence keeps the behavior and refuses the names.

## Written here, not borrowed

`obzueai-lesson` and `obzueai-grants` were not taken from a pack. The membrane could write a script and still not know if anyone learned it, and a grant could live only in chat. Those two gaps became skills on 2026-10-11.

`fullspan-shelf` is a map of titles that public lists kept repeating on 2026-10-11. No chapter was copied. The file is `memory/shelf.md`.

## License stance

Upstream packs remain under their own licenses (MIT and Apache-2.0 were the ones named on the methodology repos; some document skills upstream are source-available rather than open). Fullspan's own files are MIT. Similarity of *ideas* (write the test first, find the root cause, ask one question) is expected. Those ideas are older than any of these repositories. The words here were written for this set.
