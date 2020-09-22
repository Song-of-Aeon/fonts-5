///c_onemorenight
if global.difficulty = 1 {
    song = sm_combattheme();
} else {
    song = sm_combattheme_easy();
}
bpm = 180;
title = "Combat Theme";
audio = m_combattheme;
if global.noteoverride = 0 {
    global.red = s_red;
    global.blue = s_blue;
    global.purple = s_purple;
    global.freeze = s_green;
    global.roll = s_roll;
    global.effect = s_effect;
    global.mine = s_mine;
    global.receptor = s_receptor;
}
songbg = bk_combattheme;
lanes = 4;
arrayx[0] = "T";
arrayy[0] = 0;
global.currentstage = 1;
//bg = bk_;
//music = m_;
