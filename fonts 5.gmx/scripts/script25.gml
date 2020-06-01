song =  "#TITLE:More One Night;
#SUBTITLE:- 少女終末旅行 ED (2017);
#ARTIST:水瀬いのり & 久保ユリカ;
#TITLETRANSLIT:More One Night;
#SUBTITLETRANSLIT:- Shoujo Shuumatsu Ryokou ED (2017);
#ARTISTTRANSLIT:Minase Inori & Kubo Yurika;
#GENRE:Anime;
#CREDIT:Jubo;
#MENUCOLOR:0.224, 0.800, 0.800;
#METERTYPE:ITG;
#BANNER:More One Night-bn.png;
#BACKGROUND:More One Night-bg.png;
#LYRICSPATH:More One Night.lrc;
#CDTITLE:Jubo 6x1.png;
#MUSIC:More One Night.ogg;
#OFFSET:1.918;
#SAMPLESTART:69.507;
#SAMPLELENGTH:18.717;
#SELECTABLE:YES;
#LISTSORT:;
#BPMS:0.000=123.000;
#STOPS:;
#BGCHANGES:4.000=More One Night.avi=1.000=0=0=0,
188.250=More One Night-bg2.png=1.000=0=0=1,
99999=-nosongbg-=1.000=0=0=0 // don't automatically add -songbackground-
;
#ATTACKS:;

//---------------dance-single - ----------------
#NOTES:
     dance-single:
     :
     Easy:
     3:
     0.200,0.311,0.244,0.167,0.000:  // measure 1
0000
0000
0000
0000
,  // measure 2
0002
0000
0000
0000
,  // measure 3
0000
0000
0000
0000
,  // measure 4
2003
0000
0000
3002
,  // measure 5
0000
1003
0000
0010
,  // measure 6
0000
1000
0000
0010
,  // measure 7
0000
0100
0000
0001
,  // measure 8
0000
0100
0000
0001
,  // measure 9
0000
1000
0000
0001
,  // measure 10
0000
1000
0000
0010
,  // measure 11
0000
0100
0000
0010
,  // measure 12
0000
1000
0000
0001
,  // measure 13
1100
0000
0100
0000
,  // measure 14
1000
0000
0001
0000
,  // measure 15
0100
0000
0010
0000
,  // measure 16
1000
0000
0001
0000
,  // measure 17
0011
0000
0100
0000
,  // measure 18
0010
0000
1000
0000
,  // measure 19
0001
0000
1000
0000
,  // measure 20
0010
0000
1000
0000
,  // measure 21
0200
1000
0000
1000
,  // measure 22
0000
1000
0000
1000
,  // measure 23
2300
0010
0000
0010
,  // measure 24
0000
0010
3020
0000
,  // measure 25
0230
0001
0000
0001
,  // measure 26
0000
0001
0000
0001
,  // measure 27
0310
0000
1001
0000
,  // measure 28
0110
0000
1001
0000
,  // measure 29
1010
0000
0100
0000
,  // measure 30
1000
0000
0010
0000
,  // measure 31
0100
0000
0001
0000
,  // measure 32
0010
0000
0100
0000
,  // measure 33
1000
0000
0100
0000
,  // measure 34
0010
0000
0001
0000
,  // measure 35
0001
0000
0010
0000
,  // measure 36
0100
0000
2000
0000
,  // measure 37
0000
0000
3000
0000
,  // measure 38
1001
0000
0110
0000
,  // measure 39
1001
0000
2020
3030
,  // measure 40
1001
0000
0110
0000
,  // measure 41
1001
0000
0202
0303
,  // measure 42
1001
0000
0110
0000
,  // measure 43
1001
0000
2200
3300
,  // measure 44
1001
0000
0110
0000
,  // measure 45
1001
0000
0101
0000
,  // measure 46
0010
0000
0001
2000
,  // measure 47
0000
0000
0000
0000
0000
3000
0000
0000
;";

chartType = "dance-single";
difficulty = "Easy";
tmpArray[0] = "";
tmpList = ds_list_create();

console_log(song);

while (string_pos(chartType + ":", song)) {
    song = string_delete(song, 1, string_pos(chartType + ":", song));
    song = string_delete(song, 1, string_pos(":", song)); //skip "description" line
    if (string_pos(difficulty + ":", song) < string_pos(";", song)) {
        while (string_pos(":", song) < string_pos(";", song)) {
            song = string_delete(song, 1, string_pos(chr(10), song)); //skip any lines between difficulty and actual note data
        }
        //Save some memory by reducing the simfile in memory to only this specific chart and difficulty
        song = string_copy(song, 1, string_pos(";", song) + 2);
        //This is a workaround to get the last measure to load in properly
        song = string_replace_all(song, ";", ","+chr(10)+";");
        var i = 0;
        while (string_pos(chr(10), song) < string_pos(";", song)) {
            var p = string_pos(chr(10), song);
            var line = string_copy(song, 1, p);
            song = string_delete(song, 1, p);
            if (array_length_1d(tmpArray) < (i + 1)) {
                tmpArray[i] = "";
            }
            if (string_pos(",", line)) {
                tmpArray[i] = string_replace_all(tmpArray[i], chr(10), ","); //replace \n with comma
                tmpArray[i] = string_replace_all(tmpArray[i], chr(13), ""); //get rid of \r (part of Windows line endings)
                tmpArray[i] = string_delete(tmpArray[i], string_length(tmpArray[i]), 1); //truncate trailing comma
                ds_list_insert(tmpList, i, tmpArray[i]);
                i++;
            } else {
                //We don't want to pull in any blank lines
                if (string_replace_all(string_replace_all(line, chr(13), ""), chr(10), "") != "") {
                    tmpArray[i] += line;
                }
            }
        }
    }
}

console_log(song);
