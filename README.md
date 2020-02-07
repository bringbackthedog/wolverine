# wolverine

_This project is still in development_

Quick and dirty speech to text toy project. At the moment it transcribes up to 60 seconds of text via the command line. 

For audio input I used fmedia available (here)[https://stsaz.github.io/fmedia/]  

The Golang program takes raw audio input for stdin and outputs the text to stdout, which I piped into a golang script.

I used grep and sed to remove the extra informational text in the output, capturing only the transcription.   

Execute this command to transcribe live audio:   

```
fmedia --record --channels=1 --rate=16000 --out=@stdout.wav | ./livecaption.exe | grep -o '".*"' | sed 's/"//g'
```

