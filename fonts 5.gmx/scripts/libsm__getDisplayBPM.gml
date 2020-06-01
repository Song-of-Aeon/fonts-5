///string libsm__getDisplayBPM(string song)

// Returns the BPM to be displayed in the song listing
// Returns empty string if no BPM was specified
// Possible formats for this are as follows:
//     100          (static bpm)
//     100-200      (bpm changes between these two values)
//     *            (bpm changes randomly)
// It's up to you to parse this yourself

var song, keyword;
song = argument[0];
keyword = "#MUSIC:";

return libsm__readMetadata(song, keyword);
