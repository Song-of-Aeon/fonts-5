///c_reset_set
song = sm_reset_set();
bpm = 196;
title = "Reset Set";
audio = m_reset_set;
if global.noteoverride = 0 {
    global.red = s_sun;
    global.blue = s_sea;
    global.purple = s_stars;
    global.freeze = s_defrag;
    global.effect = s_ripple;
    global.mine = s_flare;
    global.receptor = s_reseputaa;
}
songbg = bk_reset_set;
lanes = 4;
arrayx = array("darken", "darken", "darken", "darken", "not darken",
"SET", "IDEAL", "NOT IDEAL", "CHANGE", "NOT CHANGE", "ACKNOWLEDGED", "NOT ACKNOWLEDGED", "LIKED", "NOT LIKED",
"darken", "darken", "darken", "darken", "darken", "not darken",
"GOOD", "NOT GOOD", "CHANGE", "NOT CHANGE", "PRAISED", "NOT PRAISED", "AI", "AI JANAI",
"");
arrayy = array(0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0);
//bg = bk_;
//music = m_;
