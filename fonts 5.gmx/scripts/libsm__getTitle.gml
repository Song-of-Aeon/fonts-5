///string libsm__getTitle(string song, bool translit)

// Returns song title
// If translit is TRUE, the transliterated title will be returned instead
// Returns empty string if no title was specified

var song, translit, keyword;
song = argument[0];
if (argument_count > 1) {
    translit = argument[1];
} else {
    translit = false;
}

if (translit) {
    keyword = "#TITLETRANSLIT:";
} else {
    keyword = "#TITLE:";
}

return libsm__readMetadata(song, keyword);
