function Get-POLStream {

    $text = Invoke-RestMethod -Uri https://quotes.rest/qod -Method Get
    $speech = Get-POLSpeech -OutputFormat mp3 -Text $text.contents.quotes.quote -VoiceId Amy -Region us-east-1

    Write-Output $speech.AudioStream

}
