#! /usr/bin/bash.exe

fmedia --record --channels=1 --rate=16000 --out=@stdout.wav | ./livecaption.exe | grep -o '".*"' | sed 's/"//g'

