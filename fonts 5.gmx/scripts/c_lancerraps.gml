///c_onemorenight
if global.difficulty = 1 {
    song = sm_lancerraps();
} else {
    song = sm_lancerrapseasy();
}
bpm = 170;
title = "Lancer Raps";
audio = m_lancerraps;
if global.noteoverride = 0 {
    global.red = s_aka;
    global.blue = s_ao;
    global.purple = s_murasaki;
    global.freeze = s_midori;
    global.roll = s_roru;
    global.effect = s_efekuto;
    global.mine = s_bakudan;
    global.receptor = s_reseputaa;
}
lanes = 8;
songbg = bk_lancerraps;
arrayx[0] = "T";
arrayy[0] = 0;
//bg = bk_;
//music = m_;
