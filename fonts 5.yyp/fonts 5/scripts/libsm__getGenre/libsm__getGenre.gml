/// @description string libsm__getGenre(string song)
/// @param string song
function libsm__getGenre() {

	// Returns song genre
	// Returns empty string if no genre was specified

	var song, keyword;
	song = argument[0];
	keyword = "#GENRE:";

	return libsm__readMetadata(song, keyword);



}
