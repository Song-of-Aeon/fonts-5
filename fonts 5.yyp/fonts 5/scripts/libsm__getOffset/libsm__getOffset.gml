/// @description float libsm__getOffset(string song)
/// @param string song
function libsm__getOffset() {

	// Returns offset between song and note start times, in seconds
	// Returns 0 if no offset was specified

	var song, keyword;
	song = argument[0];
	keyword = "#OFFSET:";

	return real(libsm__readMetadata(song, keyword));



}
