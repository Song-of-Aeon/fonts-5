/// @description string libsm__getLyrics(string song)
/// @param string song
function libsm__getLyrics() {

	// Returns the path to the song's lyrics file
	// Returns empty string if no lyrics could be found

	var song, keyword;
	song = argument[0];
	keyword = "#LYRICSPATH:";

	return libsm__readMetadata(song, keyword);



}
