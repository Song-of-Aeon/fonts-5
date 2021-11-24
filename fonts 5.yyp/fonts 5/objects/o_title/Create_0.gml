image_speed = 0;
image_alpha = 0;
fontsmoving = y;
glowalpha = 0;
fadealpha = 1;
fadespd = .01;
fontspd = 0;
glospd = 0;
count = 0;
shootdir = 0;
going = false;
swapper = 0;
enteralpha = 1;
draw_set_font(f_ronaldo);
window_set_cursor_sprite(cr_defrag, 0);

title = array("Evanecence,", "it", "is", "personified!",
"As", "that", "inferno", "fluxuates,", "so", "does", "the", "penultimate", "of", "the", "heptads,", "the", "one", "commanding", "the", "iconoclastic", "apparitions!",
"At", "world", "end,", "rock", "and", "heaven,", "soul", "and", "sea,", "fade,", "yet", "it", "does", "not", "matter.",
"For", "that", "melody", "had", "long", "since", "saved", "all.",
"It", "has", "already", "reached", "[AMORTALITY]");
//theres 49 of em

countwo = 0;
audio_play_sound(m_title, 0, false);

global.ogx = window_get_x();
global.ogy = window_get_y();
console_log(global.ogx, global.ogy);

c_inputwocreate();

//window_set_fullscreen(true);

