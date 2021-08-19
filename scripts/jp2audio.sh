#!/bin/bash
# use this command to run
# ./de2audio.sh < input.txt
#requires HEDDA voice to be installed. this can be done in 'region and language settings'->speech-> install german







# returns 1 if the file not there or is empty
doesExist (){
    _file="../audio-jp/$1.wav"
    [ $# -eq 0 ] && {  return 1; }
    [ ! -f "$_file" ] && {  return 1; }

    if [ -s "$_file" ]
    then
       
            return 1;
    else
       
            return 0;
    fi

}

makeEspeak (){
  echo -n $1 > word.txt;
  word=$(echo $1 | sed -e 's/\r//g') 
  echo $word

  ./espeak -f word.txt --stdout > $word.wav
}


makeWAV (){
  PowerShell -NoProfile -ExecutionPolicy unrestricted -Command "./jp.ps1 '$1'"
  #powershell -ExecutionPolicy ByPass -File makeJAPwav.ps1

}

#
#cd ..
#cd audio-de
while read word;
do
  word=$(echo $word | sed -e 's/\r//g'); #delete carrriage return
  word=$(echo $word | sed -e 's/\ /./g'); #replace spaces with a dot, so we can make the filename
  if   doesExist "$word.wav"
   then
      echo "    $word  - wav already exsists";
   else
      makeWAV "$word"

      if  doesExist "$word.wav"
         then
            
            echo "\n  $word -made the wav"
         else
            echo "\n---------------$word worked.";
      fi
   fi
done

