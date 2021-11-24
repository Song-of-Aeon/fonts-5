/// @description string libsm__getCredit(string song)
/// @param string song
function libsm__getCredit() {

	// Returns song credit (simfile author or pack/mix)
	// Returns empty string if no credit was specified

	var song, keyword;
	song = argument[0];
	keyword = "#CREDIT:";

	return libsm__readMetadata(song, keyword);



}
