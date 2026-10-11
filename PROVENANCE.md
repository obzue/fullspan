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
| [affaan-m/ECC](https://github.com/affaan-m/ECC) | A harness should verify, remember, secure, and look things up. The bulk of the repo is repeated domain recipes. | Indexed 1,000+ `SKILL.md` paths. Did not copy them. |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | Web quality, composition, and deploy discipline as separate skills. | Indexed the skill list. |
| [google/skills](https://github.com/google/skills) | One thin skill per external product, pointed at current docs. | Indexed 160+ paths. Left the product recipes out on purpose. |
| [agentskills/agentskills](https://github.com/agentskills/agentskills) | Folder plus `SKILL.md` frontmatter as the portable format. | Read the spec overview. |
| [Asaf-Dahan/super-skill](https://github.com/Asaf-Dahan/super-skill) | A living domain memory is different from a task procedure. | Read the project framing. |
| [tiantangcao1980-web/Super-Skill](https://github.com/tiantangcao1980-web/Super-Skill) | A long lifecycle from research to operations, with a gate per phase. | Read the project framing. |

Also noted while searching, and not used as source text: `sickn33/antigravity-awesome-skills` (a large curated bundle), `VoltAgent/awesome-agent-skills` (a list of lists), `kevinnft/ai-agent-skills` (an attributed installer). Bundles of bundles were not treated as a canon to merge.

## What was deliberately dropped

- Session-diagnostic tooling aimed at one upstream pack.
- Harness-specific install scripts.
- Copied prompt templates, red-flag tables, and iron-law slogans.
- Per-cloud and per-framework encyclopedias. Fullspan grows those, when needed, through `fullspan-author`.

## License stance

Upstream packs remain under their own licenses (MIT and Apache-2.0 were the ones named on the methodology repos; some document skills upstream are source-available rather than open). Fullspan's own files are MIT. Similarity of *ideas* (write the test first, find the root cause, ask one question) is expected. Those ideas are older than any of these repositories. The words here were written for this set.
