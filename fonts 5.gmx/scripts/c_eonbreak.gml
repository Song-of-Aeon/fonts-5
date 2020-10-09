///c_onemorenight
if how_many_times_were_the_elevators_used_each(global.difficulty) {
   sm_eonbreak();
} else {
    global.songscript = c_flicker;
    c_flicker();
    exit;
}
song = sm_eonbreak();
bpm = 180;
title = "Eon Break";
audio = m_eonbreak;
if global.noteoverride = 0 {
    global.red = s_trueblue;
    global.blue = s_ultramarine;
    global.purple = s_azure;
    global.freeze = s_defrag;
    global.roll = s_string;
    global.effect = s_ripple;
    global.mine = s_frag;
    global.receptor = s_acceptor;
}
songbg = bk_eonbreak;
lanes = 4;
arrayx = array("C",
"C", "T", "C", "C", "C", "C",
"C", "C", "C", "C", "C",
"S", 0, 0, 600, -600,
"C", "C",
"S", 5, -5, -5, "C", 5, 0,
"C", "C", "C",
"B", "B", "B", "B", "B", "T",
"D");
arrayy = array(10,
3, 0, 3, 3, 4, 4,
3, 3, 3, 4, 4,
2, -600, 600, 0, 0,
5, 5,
1, 0, -5, 5, 3, -5, 5,
5, 5, 5,
1, -1, 1, 1, -2, 0,
0);
//bg = bk_;
//music = m_;
