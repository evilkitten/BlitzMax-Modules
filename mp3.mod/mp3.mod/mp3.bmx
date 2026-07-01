Rem
	bbdoc:mp3
	about: MP3 and Metadata analysis
	This module is used to analyse and extract information from MP3 files
End Rem
Module mp3.mp3
ModuleInfo "Version: 1.3"
ModuleInfo "Author: PJ"
ModuleInfo "License: zlib/libpng"
ModuleInfo "Copyright: EKD"

ModuleInfo "History: 1.3 Deprecated v1 TAGs"
ModuleInfo "History: 1.2 Added CleanAnalysis function"
ModuleInfo "History: 1.1 TAG Friendly Naming"
ModuleInfo "History: 1.0 Initial Release"

Import BRL.FileSystem
Import BRL.Retro

Include "V3Tag.bmx"

'

'### Types
Rem
	bbdoc: MP3FILE
	about: Type class for MP3 file data. Metadata tag information is managed within the TAGList:TList field
End Rem
Type MP3FILE

	Rem
		bbdoc: GetURL:String()
		about: Returns the full URL Path of this instance's MP3 File
	End Rem
	Method GetURL:String()
		Const SUFFIX:String=".mp3"
		Return Self.FilePath+Self.FileName+SUFFIX
	End Method
	
	Rem
		bbdoc: Field FilePath:String
		about: Contains the path to this instance's analysed file location
	End Rem
	Field FilePath:String

	Rem
		bbdoc: Field FileName:String
		about: Contains the FileName (excluding extension) to this instances' analysed file
	End Rem
	Field FileName:String

	Rem
		bbdoc: Field ByteSize:Int
		about: Contains the full size ( in Bytes ) of this instance's analysed file on disk
	End Rem
	Field FileByteSize:Int

	Rem
		bbdoc: Field TAGList:TList
		about: A List of all mp3 metadata content
	End Rem
	Field TAGList:TList

	Rem
		bbdoc: AnalyseFile:MP3File(URL:String)
		about: Run this to gather all information from an mp3 file source. Returns an instance of MP3FILE object
	End Rem
	Function AnalyseFile:MP3FILE(URL:String)
		Const EXT:String="mp3"
		
		URL= RealPath(URL) 
		
		If (Not(FileExists(URL)))
			DebugLog("File not found: "+URL)
			Return Null
		End If
		
		If (Lower(ExtractExt(URL))<>EXT)
			DebugLog("Invalid filetype: "+URL)
			Return Null
		End If
		
		Local MP3:MP3FILE = New MP3FILE
		
		MP3.ReadFileAttributes(URL)
		MP3.ReadTags()
		
		Return MP3
	End Function 
			
	Rem
			bbdoc: Function CleanAnalysis(MP3:MP3FILE)
			about: To cleanly delete the data associated with a previously analysed MP3FILE instance
	End Rem
	Function CleanAnalysis(MP3:MP3FILE)
		If (MP3=Null) Then Return
		DebugLog("Cleaning: "+MP3.FileName)
		If (MP3.TAGList<>Null)
			If (Not(ListIsEmpty(MP3 .TAGList)))
				For Local T:MP3TAG=EachIn MP3.TAGList
					If (T<>Null)
						ListRemoveLink(MP3.TAGList, T.Index)
						
						If (T.Data<>Null) Then T.Data.Resize(0) 
						
						T.Version=Null
						T.Flags=Null
						T.Name=Null
						T.TAG=Null
						T.Data=Null
						T.DataSize=Null
						T.Start=Null
						T.Size=Null
						T.Index=Null
					End If
				Next
				ClearList(MP3.TAGList)
			End If
			MP3.TAGList=Null
			
		End If

		MP3.FilePath=Null				
		MP3.FileName=Null
		MP3.FileByteSize=Null

		GCCollect
	End Function
			
	'The below methods and functions are for internal use only

	Method ReadFileAttributes(URL:String)
		Self.FilePath=ExtractDir(URL) + "/"
		Self.FileName=StripAll(URL)
		Self.FileByteSize=FileSize(URL)		
	End Method
		
	Method ReadTags()
		Const ID3_ID:String="ID3"
		Local Url:String = Self.GetUrl()
		Local Stream:TStream = ReadFile(Url)
		
		If (Stream=Null)
			Return
		End If
		
		Local ReadChars:String=""
		For Local i:Int=0 To 2
			ReadChars:+ Chr(ReadByte(Stream))
		Next

		If (ReadChars=ID3_ID)
		
			Local hiVersion:Int = ReadByte(Stream)
			Local lowVersion:Int = ReadByte(Stream)
			Local Version:Float = Float(String(String(hiversion) + "." + String(lowversion)))
				
			Local TFlags:Int=ReadByte(Stream)
			
			Local tagpos:Int=0	
			'read size of tag data
			Local b:Int = ReadInt(Stream)
			Local Tagsizes:Int = SyncSafeInt(b)
			
			While tagpos < Tagsizes		
				Local TAG:MP3TAG = New MP3TAG
				TAG.Version=Version
			
				'read frame TAG
				Local tagname:String = ""
		
				Local b1:Byte,b2:Byte,b3:Byte,b4:Byte
			
				b1 = ReadByte(Stream) & 255
				tagpos = tagpos + 1
				
				TAG.Size=0
				
				If (b1)
								
					TAG.start = StreamPos(Stream)-1
					
					b2 = ReadByte(Stream) & 255
					b3 = ReadByte(Stream) & 255
					b4 = ReadByte(Stream) & 255
					
					tagpos = tagpos + 3
					tagname:+ Chr(b1) + Chr(b2) + Chr(b3) + Chr(b4)
					
					TAG.TAG = tagname
					
					'Special cases
					Select TAG.TAG
						Case cs_MP3_TALB,cs_MP3_TPE1,cs_MP3_TPE2,cs_MP3_TPE4,cs_MP3_TCOM,cs_MP3_TIT1,cs_MP3_TCOP,cs_MP3_TOWN,cs_MP3_TCON,cs_MP3_TLAN,cs_MP3_TPUB,cs_MP3_TIT2,cs_MP3_TRCK,cs_MP3_TYER,cs_MP3_WCOM,cs_MP3_WCOP						
													
							TAG.Size = SyncSafeInt(ReadInt(Stream))
							tagpos = tagpos + 4
												
							TAG.Flags = ReadShort(Stream) & 65535
							tagpos = tagpos + 2
									
							TAG.ReadDataBank(Stream)
							tagpos:+TAG.Size
							Rem					
								Local tagString:String=ReadValidStringUntilTerminated(Stream,TAG.Size)
								tagpos:+TAG.Size
								
								TAG.Data = tagString
							End Rem
						Case "COMM"
							'Note:prefix of language and multiline
							
							
							
							TAG.Size = SyncSafeInt(ReadInt(Stream))
							tagpos = tagpos + 4
												
							TAG.Flags = ReadShort(Stream) & 65535
							tagpos = tagpos + 2
								
							TAG.ReadDataBank(Stream)	
							tagpos:+TAG.Size
								
							Rem				
								Local commString:String=ReadValidStringUntilTerminated(Stream,TAG.Size)
								tagpos:+TAG.Size
															
								TAG.Data = commString
							End Rem
						Default

							TAG.Size = SyncSafeInt(ReadInt(Stream))
							tagpos = tagpos + 4
												
							TAG.Flags = ReadShort(Stream) & 65535
							tagpos = tagpos + 2
									
							TAG.ReadDataBank(Stream)	
							tagpos:+TAG.Size
							Rem
								Local defString:String=ReadValidStringUntilTerminated(Stream,TAG.Size)
								tagpos:+TAG.Size
							
								TAG.Data = defString
							End Rem
					End Select
	
				EndIf
								
				If (TAG.Size=0)
					'DebugLog("Zero-Length tag")
					If (TAG.Data)<>Null Then TAG.Data.Resize(0)
					TAG=Null
				Else
					TAG.SetName()
					If (Self.TAGList=Null) Then Self.TAGList=New TList
					TAG.Index = Self.TAGList.AddLast(TAG)				
				End If
			Wend

		End If
		
		CloseFile Stream
		
		Rem - Deprecated in favour of actual Bank reading
			Function ReadValidStringUntilTerminated:String(Stream:TStream,Size:Int)
				Local s:String
				For Local n:Int=0 Until Size
					Local c:Byte=(ReadByte(Stream) & 255)
					If (c=254)|(c=1)|(c=255)|(c=0)
						
					Else
						s:+Chr(c)
					End If
				Next
				Return s
			End Function
		End Rem
		
		Function SyncSafeInt:Int(I:Int)
			Local b1:Int = (I & $ff000000) Shr 24
			Local b2:Int = (I & $00ff0000) Shr 8
			Local b3:Int = (I & $0000ff00) Shr 8 
			Local b4:Int = (I & $000000ff) Shr 24
	
			b4 = b4 Shr 3
			b3 = b3 Shr 2
			b2 = b2 Shr 1
	
			Local Size:Int = b4 | b3 | b2 | b1
			Return Size
			
		End Function
		
	End Method
End Type

Rem
	bbdoc: MP3TAG
	about: This class is for metadata information retreived from an MP3FILE object once AnalyseFile() is called. Instances of MP3TAG are referenecd in the TAGList field of their respective MP3FILE OBJECT
End Rem
Type MP3TAG
	Rem
		bbdoc: Index:TLink
		about: If required, this acts as a TLink for the parent MP3OBJECT's TAGList:TList
	End Rem
	Field Index:TLink

	Rem
		bbdoc: Version:Float
		about: The TagID Version. Only v1 and v3 are supported
	End Rem
	Field Version:Float

	Rem
		bbdoc: TAG:String
		about: The Metadata Tag Identifying Key
	End Rem
	Field TAG:String

	Rem
		bbdoc: Name:String
		about: A "friendly Name" descriptor for the Metadata Tag key
	End Rem
	Field Name:String

	Rem
		bbdoc: Flags:Short
		about: Used by some Metadata Tags to hold certain infromation pertaining to the format or contents of Data
	End Rem
	Field Flags:Short

	Rem
		bbdoc: Data:TBank
		about: The actual bytedata of the Tag content
	End Rem
	Field Data:TBank	

	Rem
		bbdoc: DataSize:TBank
		about: The size of the Data field
	End Rem
	Field DataSize:Long

	Rem
		bbdoc: Size:Int
		about: The size (in Bytes) of this partuclar Metadata Tag (control characters and padding may make this larger than DataSize )
	End Rem
	Field Size:Int

	Rem
		bbdoc: Start:Int
		about: The offset (in Bytes) position of the start of this Metadata TAG within it's parent file.
	End Rem
	Field Start:Int	

	Rem
		bbdoc: Output:String[]()
		about: Outputs the Metadata Tag information as a string array
	End Rem
	Method Output:String[]()
		Local DataString:String=Self.ByteDataToString()
	
		Local s:String[]=[..
			String(Self.Version),..
			String(Self.Flags),..
			String(Self.Name),..
			String(Self.TAG),..
			String(Self.DataSize),..
			String(DataString),..
			String(Self.Start),..
			String(Self.Size)..
			]
		Return s			
	End Method
	'The below methods and functions are for internal use only

	Method SetName()
		If (Self.Version<2)
			Self.Name=Self.TAG
		Else
			Self.Name=mp3_v3Tag_GetFriendlyName:String(Self.TAG)
		End If
	End Method

	'Reads bytecode content into Self.Data:TBANK field and populates Self.DataSize accordingly
	Method ReadDataBank:TBank(Stream:TStream)
		Self.Data = CreateBank(Self.Size)
		Self.DataSize=ReadBank(Self.Data,Stream,0,Self.Size)
	End Method	
	
	'Returns a string version of TAG's Data field bank content
	Method ByteDataToString:String()
		Local s:String=""
		
		For Local i:Int = 0 Until Self.Data.Size()
			Local n:Int=PeekByte(Self.Data,i)
			If ((n>=31) And n<254)Then s:+Chr(n)
		Next
		
		Return Trim(s)
	End Method
End Type