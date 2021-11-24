/// @description string libsm__getBanner(string song)
/// @param string song
function libsm__getBanner() {

	// Returns the path to the song's banner file
	// Returns empty string if no banner could be found

	var song, keyword;
	song = argument[0];
	keyword = "#BANNER:";

	return libsm__readMetadata(song, keyword);



}
