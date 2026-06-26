Import mp3.mod

Local test:mp3file=MP3FILE.AnalyseFile("Energysound_-_War__Epic_Battle_Trailer_.mp3")
For Local t:mp3tag=EachIn test.taglist
	For local s:String=Eachin t.Output()
		Print s
	Next
Next