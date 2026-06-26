	Const cs_MP3_APIC:String = "APIC"
	Const cs_MP3_ASPI:String = "ASPI"

	Const cs_MP3_COMM:String = "COMM"
	Const cs_MP3_COMR:String = "COMR"

	Const cs_MP3_ENCR:String = "ENCR"
	Const cs_MP3_EQU2:String = "EQU2"
	Const cs_MP3_ETCO:String = "ETCO"

	Const cs_MP3_GEOB:String = "GEOB"
	Const cs_MP3_GRID:String = "GRID"

	Const cs_MP3_LINK:String = "LINK"

	Const cs_MP3_MCDI:String = "MCDI"
	Const cs_MP3_MLLT:String = "MLLT"

	Const cs_MP3_OWNE:String = "OWNE"

	Const cs_MP3_PRIV:String = "PRIV"
	Const cs_MP3_PCNT:String = "PCNT"
	Const cs_MP3_POPM:String = "POPM"
	Const cs_MP3_POSS:String = "POSS"

	Const cs_MP3_RBUF:String = "RBUF"
	Const cs_MP3_RVA2:String = "RVA2"
	Const cs_MP3_RVRB:String = "RVRB"

	Const cs_MP3_SEEK:String = "SEEK"
	Const cs_MP3_SIGN:String = "SIGN"
	Const cs_MP3_SYLT:String = "SYLT"
	Const cs_MP3_SYTC:String = "SYTC"

	Const cs_MP3_TALB:String = "TALB"
	Const cs_MP3_TBPM:String = "TBPM"
	Const cs_MP3_TCOM:String = "TCOM"
	Const cs_MP3_TCON:String = "TCON"
	Const cs_MP3_TCOP:String = "TCOP"
	Const cs_MP3_TDEN:String = "TDEN"
	Const cs_MP3_TDLY:String = "TDLY"
	Const cs_MP3_TDOR:String = "TDOR"
	Const cs_MP3_TDRC:String = "TDRC"
	Const cs_MP3_TDRL:String = "TDRL"
	Const cs_MP3_TDTG:String = "TDTG"
	Const cs_MP3_TENC:String = "TENC"
	Const cs_MP3_TEXT:String = "TEXT"
	Const cs_MP3_TFLT:String = "TFLT"
	Const cs_MP3_TIPL:String = "TIPL"
	Const cs_MP3_TIT1:String = "TIT1"
	Const cs_MP3_TIT2:String = "TIT2"
	Const cs_MP3_TIT3:String = "TIT3"
	Const cs_MP3_TKEY:String = "TKEY"
	Const cs_MP3_TLAN:String = "TLAN"
	Const cs_MP3_TLEN:String = "TLEN"
	Const cs_MP3_TMCL:String = "TMCL"
	Const cs_MP3_TMED:String = "TMED"
	Const cs_MP3_TMOO:String = "TMOO"
	Const cs_MP3_TOAL:String = "TOAL"
	Const cs_MP3_TOFN:String = "TOFN"
	Const cs_MP3_TOLY:String = "TOLY"
	Const cs_MP3_TOPE:String = "TOPE"
	Const cs_MP3_TOWN:String = "TOWN"
	Const cs_MP3_TPE1:String = "TPE1"
	Const cs_MP3_TPE2:String = "TPE2"
	Const cs_MP3_TPE3:String = "TPE3"
	Const cs_MP3_TPE4:String = "TPE4"
	Const cs_MP3_TPOS:String = "TPOS"
	Const cs_MP3_TPRO:String = "TPRO"
	Const cs_MP3_TPUB:String = "TPUB"
	Const cs_MP3_TRCK:String = "TRCK"
	Const cs_MP3_TRSN:String = "TRSN"
	Const cs_MP3_TRSO:String = "TRSO"
	Const cs_MP3_TSOA:String = "TSOA"
	Const cs_MP3_TSOP:String = "TSOP"
	Const cs_MP3_TSOT:String = "TSOT"
	Const cs_MP3_TSRC:String = "TSRC"
	Const cs_MP3_TSSE:String = "TSSE"
	Const cs_MP3_TSST:String = "TSST"
	Const cs_MP3_TYER:String = "TYER"
	Const cs_MP3_TXXX:String = "TXXX"

	Const cs_MP3_UFID:String = "UFID"
	Const cs_MP3_USER:String = "USER"
	Const cs_MP3_USLT:String = "USLT"

	Const cs_MP3_WCOM:String = "WCOM"
	Const cs_MP3_WCOP:String = "WCOP"
	Const cs_MP3_WOAF:String = "WOAF"
	Const cs_MP3_WOAR:String = "WOAR"
	Const cs_MP3_WOAS:String = "WOAS"
	Const cs_MP3_WORS:String = "WORS"
	Const cs_MP3_WPAY:String = "WPAY"
	Const cs_MP3_WPUB:String = "WPUB"
	Const cs_MP3_WXXX:String = "WXXX"

Function mp3_v3Tag_GetFriendlyName:String(TagKey:String)
	Const cs_MP3_APIC_F:String = "Attached picture"
	Const cs_MP3_ASPI_F:String = "Audio seek point index"

	Const cs_MP3_COMM_F:String = "Comments"
	Const cs_MP3_COMR_F:String = "Commercial frame"

	Const cs_MP3_ENCR_F:String = "Encryption Method registration"
	Const cs_MP3_EQU2_F:String = "Equalisation (2)"
	Const cs_MP3_ETCO_F:String = "Event timing codes"

	Const cs_MP3_GEOB_F:String = "General encapsulated Object"
	Const cs_MP3_GRID_F:String = "Group identification registration"

	Const cs_MP3_LINK_F:String = "Linked information"

	Const cs_MP3_MCDI_F:String = "Music CD identifier"
	Const cs_MP3_MLLT_F:String = "MPEG location lookup table"

	Const cs_MP3_OWNE_F:String = "Ownership frame"

	Const cs_MP3_PRIV_F:String = "Private frame"
	Const cs_MP3_PCNT_F:String = "Play counter"
	Const cs_MP3_POPM_F:String = "Popularimeter"
	Const cs_MP3_POSS_F:String = "Position synchronisation frame"

	Const cs_MP3_RBUF_F:String = "Recommended buffer size"
	Const cs_MP3_RVA2_F:String = "Relative volume adjustment (2)"
	Const cs_MP3_RVRB_F:String = "Reverb"

	Const cs_MP3_SEEK_F:String = "Seek frame"
	Const cs_MP3_SIGN_F:String = "Signature frame"
	Const cs_MP3_SYLT_F:String = "Synchronised lyric/text"
	Const cs_MP3_SYTC_F:String = "Synchronised tempo codes"

	Const cs_MP3_TALB_F:String = "Album/Movie/Show title"
	Const cs_MP3_TBPM_F:String = "BPM (beats per minute)"
	Const cs_MP3_TCOM_F:String = "Composer"
	Const cs_MP3_TCON_F:String = "Content Type"
	Const cs_MP3_TCOP_F:String = "Copyright message"
	Const cs_MP3_TDEN_F:String = "Encoding time"
	Const cs_MP3_TDLY_F:String = "Playlist Delay"
	Const cs_MP3_TDOR_F:String = "Original Release time"
	Const cs_MP3_TDRC_F:String = "Recording time"
	Const cs_MP3_TDRL_F:String = "Release time"
	Const cs_MP3_TDTG_F:String = "Tagging time"
	Const cs_MP3_TENC_F:String = "Encoded by"
	Const cs_MP3_TEXT_F:String = "Lyricist/Text writer"
	Const cs_MP3_TFLT_F:String = "File Type"
	Const cs_MP3_TIPL_F:String = "Involved people list"
	Const cs_MP3_TIT1_F:String = "Content group description"
	Const cs_MP3_TIT2_F:String = "Title/songname/content description"
	Const cs_MP3_TIT3_F:String = "Subtitle/Description refinement"
	Const cs_MP3_TKEY_F:String = "Initial key"
	Const cs_MP3_TLAN_F:String = "Language(s)"
	Const cs_MP3_TLEN_F:String = "Length"
	Const cs_MP3_TMCL_F:String = "Musician credits list"
	Const cs_MP3_TMED_F:String = "Media Type"
	Const cs_MP3_TMOO_F:String = "Mood"
	Const cs_MP3_TOAL_F:String = "Original album/movie/show title"
	Const cs_MP3_TOFN_F:String = "Original filename"
	Const cs_MP3_TOLY_F:String = "Original lyricist(s)/text writer(s)"
	Const cs_MP3_TOPE_F:String = "Original artist(s)/performer(s)"
	Const cs_MP3_TOWN_F:String = "File owner/licensee"
	Const cs_MP3_TPE1_F:String = "Lead performer(s)/Soloist(s)"
	Const cs_MP3_TPE2_F:String = "Band/orchestra/accompaniment"
	Const cs_MP3_TPE3_F:String = "Conductor/performer refinement"
	Const cs_MP3_TPE4_F:String = "Interpreted, remixed, Or otherwise modified by"
	Const cs_MP3_TPOS_F:String = "Part of a set"
	Const cs_MP3_TPRO_F:String = "Produced notice"
	Const cs_MP3_TPUB_F:String = "Publisher"
	Const cs_MP3_TRCK_F:String = "Track number/Position in set"
	Const cs_MP3_TRSN_F:String = "Internet radio station name"
	Const cs_MP3_TRSO_F:String = "Internet radio station owner"
	Const cs_MP3_TSOA_F:String = "Album sort order"
	Const cs_MP3_TSOP_F:String = "Performer sort order"
	Const cs_MP3_TSOT_F:String = "Title sort order"
	Const cs_MP3_TSRC_F:String = "ISRC (international standard recording code)"
	Const cs_MP3_TSSE_F:String = "Software/Hardware And settings used For encoding"
	Const cs_MP3_TSST_F:String = "Set subtitle"
	Const cs_MP3_TYER_F:String = "[Unofficial] Release Year"
	Const cs_MP3_TXXX_F:String = "User defined text information frame"

	Const cs_MP3_UFID_F:String = "Unique file identifier"
	Const cs_MP3_USER_F:String = "Terms of use"
	Const cs_MP3_USLT_F:String = "Unsynchronised lyric/text transcription"

	Const cs_MP3_WCOM_F:String = "Commercial information"
	Const cs_MP3_WCOP_F:String = "Copyright/Legal information"
	Const cs_MP3_WOAF_F:String = "Official audio file webpage"
	Const cs_MP3_WOAR_F:String = "Official artist/performer webpage"
	Const cs_MP3_WOAS_F:String = "Official audio source webpage"
	Const cs_MP3_WORS_F:String = "Official Internet radio station homepage"
	Const cs_MP3_WPAY_F:String = "Payment"
	Const cs_MP3_WPUB_F:String = "Publishers official webpage"
	Const cs_MP3_WXXX_F:String = "User defined URL link frame"

	Const cs_MP3_UNKNOWN_F:String="[Unofficial Tag ID]"

	Select TagKEY
		Case cs_MP3_APIC Return  cs_MP3_APIC_F
		Case cs_MP3_ASPI Return  cs_MP3_ASPI_F

		Case cs_MP3_COMM Return  cs_MP3_COMM_F
		Case cs_MP3_COMR Return  cs_MP3_COMR_F

		Case cs_MP3_ENCR Return  cs_MP3_ENCR_F
		Case cs_MP3_EQU2 Return  cs_MP3_EQU2_F
		Case cs_MP3_ETCO Return  cs_MP3_ETCO_F

		Case cs_MP3_GEOB Return  cs_MP3_GEOB_F
		Case cs_MP3_GRID Return  cs_MP3_GRID_F

		Case cs_MP3_LINK Return  cs_MP3_LINK_F

		Case cs_MP3_MCDI Return  cs_MP3_MCDI_F
		Case cs_MP3_MLLT Return  cs_MP3_MLLT_F

		Case cs_MP3_OWNE Return  cs_MP3_OWNE_F

		Case cs_MP3_PRIV Return  cs_MP3_PRIV_F
		Case cs_MP3_PCNT Return  cs_MP3_PCNT_F
		Case cs_MP3_POPM Return  cs_MP3_POPM_F
		Case cs_MP3_POSS Return  cs_MP3_POSS_F

		Case cs_MP3_RBUF Return  cs_MP3_RBUF_F
		Case cs_MP3_RVA2 Return  cs_MP3_RVA2_F
		Case cs_MP3_RVRB Return  cs_MP3_RVRB_F

		Case cs_MP3_SEEK Return  cs_MP3_SEEK_F
		Case cs_MP3_SIGN Return  cs_MP3_SIGN_F
		Case cs_MP3_SYLT Return  cs_MP3_SYLT_F
		Case cs_MP3_SYTC Return  cs_MP3_SYTC_F

		Case cs_MP3_TALB Return  cs_MP3_TALB_F
		Case cs_MP3_TBPM Return  cs_MP3_TBPM_F
		Case cs_MP3_TCOM Return  cs_MP3_TCOM_F
		Case cs_MP3_TCON Return  cs_MP3_TCON_F
		Case cs_MP3_TCOP Return  cs_MP3_TCOP_F
		Case cs_MP3_TDEN Return  cs_MP3_TDEN_F
		Case cs_MP3_TDLY Return  cs_MP3_TDLY_F
		Case cs_MP3_TDOR Return  cs_MP3_TDOR_F
		Case cs_MP3_TDRC Return  cs_MP3_TDRC_F
		Case cs_MP3_TDRL Return  cs_MP3_TDRL_F
		Case cs_MP3_TDTG Return  cs_MP3_TDTG_F
		Case cs_MP3_TENC Return  cs_MP3_TENC_F
		Case cs_MP3_TEXT Return  cs_MP3_TEXT_F
		Case cs_MP3_TFLT Return  cs_MP3_TFLT_F
		Case cs_MP3_TIPL Return  cs_MP3_TIPL_F
		Case cs_MP3_TIT1 Return  cs_MP3_TIT1_F
		Case cs_MP3_TIT2 Return  cs_MP3_TIT2_F
		Case cs_MP3_TIT3 Return  cs_MP3_TIT3_F
		Case cs_MP3_TKEY Return  cs_MP3_TKEY_F
		Case cs_MP3_TLAN Return  cs_MP3_TLAN_F
		Case cs_MP3_TLEN Return  cs_MP3_TLEN_F
		Case cs_MP3_TMCL Return  cs_MP3_TMCL_F
		Case cs_MP3_TMED Return  cs_MP3_TMED_F
		Case cs_MP3_TMOO Return  cs_MP3_TMOO_F
		Case cs_MP3_TOAL Return  cs_MP3_TOAL_F
		Case cs_MP3_TOFN Return  cs_MP3_TOFN_F
		Case cs_MP3_TOLY Return  cs_MP3_TOLY_F
		Case cs_MP3_TOPE Return  cs_MP3_TOPE_F
		Case cs_MP3_TOWN Return  cs_MP3_TOWN_F
		Case cs_MP3_TPE1 Return  cs_MP3_TPE1_F
		Case cs_MP3_TPE2 Return  cs_MP3_TPE2_F
		Case cs_MP3_TPE3 Return  cs_MP3_TPE3_F
		Case cs_MP3_TPE4 Return  cs_MP3_TPE4_F
		Case cs_MP3_TPOS Return  cs_MP3_TPOS_F
		Case cs_MP3_TPRO Return  cs_MP3_TPRO_F
		Case cs_MP3_TPUB Return  cs_MP3_TPUB_F
		Case cs_MP3_TRCK Return  cs_MP3_TRCK_F
		Case cs_MP3_TRSN Return  cs_MP3_TRSN_F
		Case cs_MP3_TRSO Return  cs_MP3_TRSO_F
		Case cs_MP3_TSOA Return  cs_MP3_TSOA_F
		Case cs_MP3_TSOP Return  cs_MP3_TSOP_F
		Case cs_MP3_TSOT Return  cs_MP3_TSOT_F
		Case cs_MP3_TSRC Return  cs_MP3_TSRC_F
		Case cs_MP3_TSSE Return  cs_MP3_TSSE_F
		Case cs_MP3_TSST Return  cs_MP3_TSST_F
		Case cs_MP3_TYER Return  cs_MP3_TYER_F
		Case cs_MP3_TXXX Return  cs_MP3_TXXX_F

		Case cs_MP3_UFID Return  cs_MP3_UFID_F
		Case cs_MP3_USER Return  cs_MP3_USER_F
		Case cs_MP3_USLT Return  cs_MP3_USLT_F

		Case cs_MP3_WCOM Return  cs_MP3_WCOM_F
		Case cs_MP3_WCOP Return  cs_MP3_WCOP_F
		Case cs_MP3_WOAF Return  cs_MP3_WOAF_F
		Case cs_MP3_WOAR Return  cs_MP3_WOAR_F
		Case cs_MP3_WOAS Return  cs_MP3_WOAS_F
		Case cs_MP3_WORS Return  cs_MP3_WORS_F
		Case cs_MP3_WPAY Return  cs_MP3_WPAY_F
		Case cs_MP3_WPUB Return  cs_MP3_WPUB_F
		Case cs_MP3_WXXX Return  cs_MP3_WXXX_F

		Default
			Return cs_MP3_UNKNOWN_F
	End Select
End Function