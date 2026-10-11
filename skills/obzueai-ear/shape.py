"""Clean one recording, then print real voice-activity events.

Events match done.sh: onset, held, dip, hush.
A quiet file prints nothing. This does not decide that the learner is done.
"""
import sys

import numpy as np
from pedalboard import Compressor, NoiseGate, Pedalboard
from pedalboard.io import AudioFile

FRAME_S = 0.02
HOLD_FRAMES = 8
HANG_FRAMES = 20


def mono(audio: np.ndarray) -> np.ndarray:
    if audio.ndim == 1:
        return audio
    return audio.mean(axis=0)


def events(samples: np.ndarray, rate: int) -> list[str]:
    frame = max(1, int(FRAME_S * rate))
    use = samples[: len(samples) - (len(samples) % frame)]
    if use.size == 0:
        return []
    rms = np.sqrt(np.mean(np.square(use.reshape(-1, frame)), axis=1))
    floor = float(np.percentile(rms, 10))
    high = max(floor * 6.0, 0.015)
    low = max(floor * 2.5, 0.008)
    out: list[str] = []
    state = "quiet"
    run = 0
    hang = 0
    dipped = False
    for level in rms:
        if state == "quiet":
            if level >= high:
                run += 1
                if run >= HOLD_FRAMES:
                    out.append("onset")
                    out.append("held")
                    state = "voice"
                    run = 0
                    dipped = False
            else:
                run = 0
        elif state == "voice":
            if level < low:
                if not dipped:
                    out.append("dip")
                    dipped = True
                state = "hang"
                hang = 1
                run = 0
        else:
            if level >= high:
                run += 1
                if run >= HOLD_FRAMES:
                    state = "voice"
                    hang = 0
                    run = 0
            else:
                run = 0
                hang += 1
                if hang >= HANG_FRAMES:
                    out.append("hush")
                    state = "quiet"
                    hang = 0
                    dipped = False
    return out


def main() -> int:
    src = sys.argv[1]
    dest = sys.argv[2]
    with AudioFile(src) as incoming:
        raw = incoming.read(incoming.frames)
        rate = incoming.samplerate
    board = Pedalboard(
        [
            NoiseGate(threshold_db=-42, ratio=2.0, attack_ms=5, release_ms=120),
            Compressor(threshold_db=-18, ratio=3.0, attack_ms=8, release_ms=80),
        ]
    )
    shaped = board(raw, rate)
    with AudioFile(dest, "w", rate, shaped.shape[0]) as outgoing:
        outgoing.write(shaped)
    for event in events(mono(shaped), rate):
        print(event)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
