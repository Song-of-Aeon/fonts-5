///c_reset_set
song = sm_reset_set();
bpm = 196;
title = "Reset Set";
audio = m_reset_set;
if global.noteoverride = 0 {
    global.red = s_trueblue;
    global.blue = s_ultramarine;
    global.purple = s_azure;
    global.freeze = s_defrag;
    global.effect = s_ripple;
    global.mine = s_frag;
    global.receptor = s_acceptor;
}
songbg = bk_reset_set;
lanes = 4;
arrayx = array("darken", "darken", "darken", "darken", "not darken",
"SET", "IDEAL", "NOT IDEAL", "CHANGE", "NOT CHANGE", "ACKNOWLEDGED", "NOT ACKNOWLEDGED", "LIKED", "NOT LIKED",
"");
arrayy = array(0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
//bg = bk_;
//music = m_;
