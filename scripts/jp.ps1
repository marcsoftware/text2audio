#get args


$word = $args[0]


write-host $word

#make tts and save to wav...

    Add-Type -AssemblyName System.speech
    $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer

    # uncomment this if you get 'voice not found error message'
    # print the installed voices
    #Echo 'list of installed voices:'
    #foreach ($voice in $speak.GetInstalledVoices()) {
    #    Echo $voice.VoiceInfo.Name;
    #}

    $speak.SelectVoice('Microsoft Haruka Desktop')



    #$speak | Get-Member


    $speak.SetOutputToWaveFile("../audio-jp/$word.wav")
    $speak.Speak($word)
    $speak.Dispose()

