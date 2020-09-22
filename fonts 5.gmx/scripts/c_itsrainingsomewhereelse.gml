///c_onemorenight
song = sm_itsrainingsomewhereelse();
bpm = 96;
title = "It's Raining Somewhere Else";
audio = m_itsrainingsomewhereelse;
if global.noteoverride = 0 {
    global.red = s_crystal;
    global.blue = s_crystal;
    global.purple = s_crystal;
    global.freeze = s_onyx;
    global.roll = s_onyx;
    global.effect = s_ripple;
    global.mine = s_negative;
    global.receptor = s_gem;
}
global.mini = 1;
minibig = (global.mini-1)*64;
laneleft = 544-minibig*1.5;
lanedown = 608-minibig*.5;
laneup = 672+minibig*.5;
laneright = 736+minibig*1.5;
songbg = s_null;
lanes = 4;
arrayx[0] = "T";
global.currentstage = 8;
//duplicate to the left and right
//var center = lanedown + lanespacing/4;
//bg = bk_;
//music = m_;
