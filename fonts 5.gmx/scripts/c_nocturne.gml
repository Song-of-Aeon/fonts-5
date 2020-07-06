///c_onemorenight
song = sm_nocturne();
bpm = 94;
title = "Nocturne";
audio = m_nocturne;
if global.noteoverride = 0 {
    global.red = s_crystal;
    global.blue = s_crystal;
    global.purple = s_crystal;
    global.freeze = s_midori;
    global.effect = s_ripple;
    global.mine = s_negative;
    global.receptor = s_gem;
}
mini = 1;
minibig = (mini-1)*64;
laneleft = 534-minibig*1.5;
lanedown = 598-minibig*.5;
laneup = 662+minibig*.5;
laneright = 726+minibig*1.5;
songbg = s_null;
lanes = 4;
arrayx[0] = "T";
//duplicate to the left and right
//var center = lanedown + lanespacing/4;
//bg = bk_;
//music = m_;
