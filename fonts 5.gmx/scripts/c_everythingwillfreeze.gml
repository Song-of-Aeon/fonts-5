///c_onemorenight
if how_many_times_were_the_elevators_used_each(global.difficulty) {
    song = sm_everythingwillfreeze();
} else {
    global.songscript = c_nightfalls;
    c_nightfalls();
    exit;
}
bpm = 240;
title = "Everything Will Freeze";
audio = m_everythingwillfreeze;
if global.noteoverride = 0 {
    global.red = s_dark;
    global.blue = s_darker;
    global.purple = s_yetdarker;
    global.freeze = s_umbra;
    global.roll = s_nacht;
    global.effect = s_blacklight;
    global.mine = s_negative;
    global.receptor = s_shadow;
}
songbg = bk_everythingwillfreeze;
lanes = 4;
xmod = 8;
arrayx = array("T",
"SOUL", "UNSOUL", "SOUL", "UNSOUL", "SOUL", "UNSOUL", "SOUL", "UNSOUL");
arrayy[0] = 0;
//bg = bk_;
//music = m_;
