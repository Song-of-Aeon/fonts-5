/// @description float libsm__getSampleLength(string song)
/// @param string song
function libsm__getSampleLength() {

	// Returns the duration (in seconds) of the music sample
	// Returns -1 if no duration was defined

	var song, keyword, value;
	song = argument[0];
	keyword = "#SAMPLELENGTH:";

	value = libsm__readMetadata(song, keyword);
	if (value != "") {
	    value = real(value);
	} else {
	    value = -1;
	}

	return value;



}
