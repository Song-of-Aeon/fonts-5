/// @description string libsm__getArtist(string song, bool translit)
/// @param string song
/// @param  bool translit
function libsm__getArtist() {

	// Returns song artist
	// If translit is TRUE, the transliterated artist will be returned instead
	// Returns empty string if no artist was specified

	var song, translit, keyword;
	song = argument[0];
	if (argument_count > 1) {
	    translit = argument[1];
	} else {
	    translit = false;
	}

	if (translit) {
	    keyword = "#ARTISTTRANSLIT:";
	} else {
	    keyword = "#ARTIST:";
	}

	return libsm__readMetadata(song, keyword);



}
