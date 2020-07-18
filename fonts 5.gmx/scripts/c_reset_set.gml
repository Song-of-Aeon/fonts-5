///c_reset_set
if global.difficulty = 1 {
    song = sm_reset_set();
} else {
    song = sm_reset_set_easy();
}
bpm = 196;
title = "Reset Set";
audio = m_reset_set;
if global.noteoverride = 0 {
    global.red = s_sun;
    global.blue = s_sea;
    global.purple = s_stars;
    global.freeze = s_asteroid;
    global.effect = s_ripple;
    global.mine = s_flare;
    global.receptor = s_galaxy;
}
songbg = bk_reset_set;
lanes = 4;
arrayx = array("darken", "darken", "darken", "darken", "not darken",
"SET", "IDEAL", "NOT IDEAL", "CHANGE", "NOT CHANGE", "ACKNOWLEDGED", "NOT ACKNOWLEDGED", "LIKED", "NOT LIKED",
"SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SET", 
"SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SET", "RESET",
"darken", "darken", "darken", "darken", "darken", "not darken",
"SET", "GOOD", "NOT GOOD", "CHANGE", "NOT CHANGE", "PRAISED", "NOT PRAISED", "AI", "AI JANAI", "RESET",
"SET", "IDEAL", "NOT IDEAL", "CHANGE", "KAWARU", "NOT CHANGE", "KAWARANAI", "ACKNOWLEDGED", "KAWARU", "NOT ACKNOWLEDGED", "KAWARANAI", "LIKED", "KAWARU", "NOT LIKED", "KAWARANAI",
"SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SET",
"SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SE", "SET", "RESET",);
/*arrayy = array(0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0, 0,

0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0);*/
//bg = bk_;
//music = m_;
