

draw_sprite_ext(s_fonts5, 2, x, y, 1, 1, 0, c_white, glowalpha);
draw_sprite(s_fonts5, 1, x, y);
draw_sprite(s_fonts5, 0, x, fontsmoving);
depth = -2;
draw_sprite_ext(s_start, 0, 960, 900, 1, 1, 0, c_white, enteralpha);
draw_sprite_ext(s_black, 0, x, y, 1, 1, 0, c_white, fadealpha);
depth = 0;
/*
var i;
for (i=0;i<49;i++) {
    if i <= 12 {
        draw_text_ext_transformed(100, i*60+100, title[i], 0, 1000, 1, 1, 0);
    } else if i <= 24 {
        draw_text_ext_transformed(600, (i-12)*60+100, title[i], 0, 1000, 1, 1, 0);
    } else if i <= 36 {
        draw_text_ext_transformed(1100, (i-24)*60+100, title[i], 0, 1000, 1, 1, 0);
    } else {
        draw_text_ext_transformed(1600, (i-36)*60+100, title[i], 0, 1000, 1, 1, 0);
    }
}
*/

/* */
/*  */
