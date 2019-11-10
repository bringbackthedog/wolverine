# wolverine
Speech to text toy project for auto transcription of school lectures

_draft_
__WSL audio input doesnt seem to work!__

Tested on this system: 

$sudo apt-get install lsb-release  
$lsb_release -a  
  > Distributor ID: Debian  
  > Description:    Debian GNU/Linux 10 (buster)  
  > Release:        10  
  > Codename:       buster  

$python3 --version
> Python 3.7.3
___


- creating virtual environment
  - $ python3 -m venv .env
  - $sudo apt-get install python3-venv
  - $ source .env/bin/activate
  - to exit venv : $ deactivate
  
___

_installing requirements_  
$ pip3 install SpeechRecognition  
$ pip3 install wheel  
$ sudo apt-get install portaudio19-dev  
$ pip3 install pyaudio  


$ sudo apt-get install alsa-utils  


