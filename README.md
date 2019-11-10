# wolverine
Speech to text toy project for auto transcription of school lectures

_draft_
__WSL audio input doesnt seem to work! Microphone input doesn't seem to work on WSL so run in cmd or PowerSHell__   

For audio input I used fmedia available (here)[https://stsaz.github.io/fmedia/]  
The Golang program takes raw audio input for stdin and outputs the text.  
I used grep and sed to remove the extra informational text in the output, capturing only the transcription.   
Execute this command to transcribe live audio:   
```
fmedia --record --channels=1 --rate=16000 --out=@stdout.wav | ./livecaption.exe | grep -o '".*"' | sed 's/"//g'
```

