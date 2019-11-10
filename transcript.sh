#! /usr/bin/bash.exe

#fmedia --record --channels=1 --rate=16000 --out=@stdout.wav | ./livecaption.exe | 

rec=(fmedia --record --channels=1 --rate=16000 --out=@stdout.wav)
transcription=$rec|./livecaption.exe 

#grep -o '".*"' output | sed 's/"//g'
#grep -o '".*"' $transcription | sed 's/"//g'
#grep -o '".*"' $transcription | sed 's/"//g'
@ fmedia --record --channels=1 --rate=16000 --out=@stdout.wav | ./livecaption.exe | grep -o '".*"' | sed 's/"//g'

