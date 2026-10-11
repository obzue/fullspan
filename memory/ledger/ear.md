# ear

Date: 2026-10-11
Kind: decision
Claim: Two-way audio is one ear per tab. The mic and the speaker start shut. Real speech stops her. A cough, a backchannel, and her own echo do not. A second agent is not joined.
Supersedes: none
Source: public two-way speech loops, read 2026-10-11. Names were not copied.

The turn machine is skills/obzueai-ear/turn.sh. A slower turn is skills/obzueai-ear/pace.sh: a long pause does not become her turn, and again repeats the last line. Done is skills/obzueai-ear/done.sh, walked by skills/obzueai-ear/walk.sh. A dip holds. A hush is a gap, and the gap is not done. Settled is allowed only from that gap, after words. On 2026-10-11 the house tab was allowed to listen and to play a cue. A small local ear model turns a recording into words. It is not the mouth. Tested on the candidate line, it returned the counts and the close, with small word errors. It does not invent a sentence from a missing mic. Tabs live in memory/tabs.md. This claim is false if the mouth stays open over real speech, if a quiet gap is treated as the end, if a missing mic becomes a sentence, or if two agents share a microphone without an operator allow.
