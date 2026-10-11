# Box

The tab the agent runs in. It starts at deny. The agent does not write this file or `box.rules`.

A grant is the person's yes. The box is what the machine allows even after that yes. Both have to pass.

| Kind | Rule in this repo |
|---|---|
| file-read | `fullspan/` only |
| file-write | `fullspan/`, except this policy, the watch file, the audit, and the two checks |
| net | deny |
| secret | deny. A secret is attached by the operator for one named destination, or not at all |
| process | deny. No privilege change |
| mic | deny, per tab |
| speaker | deny, per tab. Hearing does not open the mouth |

Checked before the action, and the result is a line in `memory/audit.log`. This check is a program in the repo. It is not a kernel, and it is not a separate chip. A seat outside the host can come later. Do not claim it is already here.
