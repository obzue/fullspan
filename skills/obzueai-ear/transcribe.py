"""Turn one wav file into words. Prints nothing if the model hears no words."""
import sys
import wave

from vosk import KaldiRecognizer, Model, SetLogLevel

MODEL = "/workspace/fullspan/skills/obzueai-ear/ear-model"


def main() -> int:
    SetLogLevel(-1)
    path = sys.argv[1]
    model = Model(MODEL)
    with wave.open(path, "rb") as audio:
        if audio.getnchannels() != 1 or audio.getframerate() != 16000:
            print("need 16 kHz mono", file=sys.stderr)
            return 2
        recognizer = KaldiRecognizer(model, 16000)
        while True:
            data = audio.readframes(4000)
            if not data:
                break
            recognizer.AcceptWaveform(data)
        result = recognizer.FinalResult()
    text = ""
    try:
        import json
        text = json.loads(result).get("text", "").strip()
    except Exception:
        text = ""
    if text:
        print(text)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
