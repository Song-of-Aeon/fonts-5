//if asdawdasdawd; {} //this code works
mmod = 0;
cmod = 0;
bar = 64;
//mini = 1; //1.4
minibig = (global.mini-1)*64;
bop[0] = 1;
bop[1] = 1;
bop[2] = 1;
bop[3] = 1;
bop[4] = 1;
bop[5] = 1;
bop[6] = 1;
bop[7] = 1;
bop[8] = 1;
infoalpha = 0;
combocolour = array_create(4);
combo = 0;
realscore = 0;
highscore = 0;
draw_set_font(f_ronaldo);
state = c_receptorinput;
offset = 0;
noterank = 5;
ranktext = 11037;
//offset = 1918;
timecounter = 0;
songstarting = false;
if global.songscript = c_lancerraps {
laneleft = 394-96-minibig*1.5;
lanedown = 394-32-minibig*.5;
laneup = 394+32+minibig*.5;
laneright = 394+96+minibig*1.5;
laneleftwo = 884-96-minibig*1.5;
lanedowntwo = 884-32-minibig*.5;
laneuptwo = 884+32+minibig*.5;
lanerightwo = 884+96+minibig*1.5;
bluepos = 394;
} else {
laneleft = 544-minibig*1.5;
lanedown = 608-minibig*.5;
laneup = 672+minibig*.5;
laneright = 736+minibig*1.5;
bluepos = 640;
}
lanespacing = 64;
lanes = 4;
laneselected = lanedown+(lanespacing/2);

blueposaved = bluepos;
bluehspd = 0;
lanespeed = 0;
hp = 12;
//measurescoring = array_create(48);
audio = m_drivin; //doesnt matter, songscript contains audio
songbg = s_kaguya;
script_execute(global.songscript);

danmaku = 0;
upwave = 0;
downwave = 0;
danmaku = 0;
windowBouncex = 1;
windowBouncey = 1;
windowBounceSpeed = 0;
windowx = global.ogx;
windowy = global.ogy;
windowxsaved = global.ogx;
windowysaved = global.ogy;
whspd = 0;
wvspd = 0;
inputgimmick = true;
arraypos = 0;
gimmickstate = 0;
breadx = global.ogx;
bready = global.ogy;
comborank = 3;
allideal = false;
noteturn = false;
noteburst = false;
osumode = false;
chokepoint = 2000;
notechange = false;

count = 0;
countwo = 0;
if global.songscript = c_eonbreak && window_get_fullscreen() && global.gimmickactive {
    window_set_fullscreen(false);
    window_set_position(global.ogx, global.ogy);
    console_log(window_get_x());
}
if global.noteoverride != 0 {
    c_noteoverride();
}
global.truetime = 1;

c_inputwocreate();
rumble = array_create(4);

autoplay = false;

