menuposition = 0;
selectoronsong = true;
selectorposx = 652;
selectorposy = 127;
difcursy = 49; //125
difcursavedy = 49;
difcurvspd = 0;
selectorvspd = 0;
selectorsavevspd = 0;
selectorsavey = selectorposy;
hspd = 0;
menuxscale = 1;
menuyscale = 1;
lockon = 0;

global.scoring[0] = 0;
global.scoring[1] = "00.00L";
global.scoring[2] = "00.00L";
global.scoring[3] = "00.00L";
global.scoring[4] = "00.00L";
global.scoring[5] = "00.00L";
global.scoring[6] = "00.00L";
global.scoring[7] = 0;
global.completion = 0;
global.gimmickcompletion = 0;
global.currentstage = 0;
scoreshow = array_create(6);
scoreshowcolour = array(c_white, c_white, c_white, c_white, c_white, c_white);

global.songscript = c_jumptest;
global.storymode = false;
global.cutscenecount = 0;
global.megastream = false;
truecombo = 0;

global.red = s_red;
global.blue = s_blue;
global.purple = s_purple;
global.freeze = s_green;
global.effect = s_effect;
global.mine = s_mine;
global.receptor = s_receptor;
global.noteoverride = 0;
global.gimmickactive = true;
global.xmod = 8;
global.hidden = false;

global.difficulty = 1;

if file_exists("profile.ini") {
    //game_load("profile.dat");
    ini_open("profile.ini");
    global.scoring[0] = ini_read_string("scores"+string(global.difficulty), "stage 0", "0");
    global.scoring[1] = ini_read_string("scores"+string(global.difficulty), "stage 1", "00.00L");
    global.scoring[2] = ini_read_string("scores"+string(global.difficulty), "stage 2", "00.00L");
    global.scoring[3] = ini_read_string("scores"+string(global.difficulty), "stage 3", "00.00L");
    global.scoring[4] = ini_read_string("scores"+string(global.difficulty), "stage 4", "00.00L");
    global.scoring[5] = ini_read_string("scores"+string(global.difficulty), "stage 5", "00.00L");
    global.scoring[6] = ini_read_string("scores"+string(global.difficulty), "stage 6", "00.00L");
    global.completion = ini_read_string("story", "completion", "0");
    global.gimmickcompletion = ini_read_string("story", "gimmick", "0");
    ini_close();
} else {
    o_controls.x = room_height/2;
    o_controls.going = true;
}
global.kaguya = false;
global.notecover = s_kaguya;
global.streamstring = false;
global.controller = false;
audio_play_sound(m_night, 0, false);

image_speed = 0;
c_inputwocreate();
global.mmod = 600;
global.mini = 1.4;
global.scuffer = false;

