#### this script requires voices to be installed

##### to install voice requirement WINDOWS 10 
* STEP 1 : go to region & language settings > speech > install german and/or japanese language
* STEP 2: and wait for the languages to download
* STEP 3: after downloading be sure to close the 'region and language setting' or you will get voice not installed error message

###### make the audio files
* STEP 1. put japanese words into input.txt and put each word on its own line
* STEP 2. Right click on the makeWAV.ps1 file and click properties.
         
         click the [✔] UNBLOCK - "THIS FLILE CAME FROM ANOTHER COMPUTER AND MAY BE BLOCKED"
  
           https://hi.service-now.com/kb_view.do?sysparm_article=KB0713009
* STEP 3.  
```
#type following commands into console 
cd scripts
./jp2audio.sh < input.txt
```
  

* STEP 4. check that audio files are saved in audio-jp folder
