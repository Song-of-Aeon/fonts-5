depth = 5;
draw_sprite(songbg, 0, 0, 0);

if global.songscript != c_nocturne && global.songscript != c_itsrainingsomewhereelse {
    draw_set_colour(c_black);
    draw_sprite(s_scoreshow, 0, 0, 0);
    draw_set_font(f_alien);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(24, 24, string_hash_to_newline(string_copy(string(realscore), 0, 5)));
}


//draw_sprite_ext(s_blueselected, 0, laneselected+12.8, 0, global.mini, 1, 0, c_white, 1);
draw_sprite_ext(s_futureselected, 0, bluepos, 0, global.mini, 1, 0, c_white, 1);


draw_sprite_ext(global.receptor, 0, laneleft, bar, global.mini*bop[0], global.mini*bop[0], -90, c_white, 1);
draw_sprite_ext(global.receptor, 0, lanedown, bar, global.mini*bop[1], global.mini*bop[1], 0, c_white, 1);
draw_sprite_ext(global.receptor, 0, laneup, bar, global.mini*bop[2], global.mini*bop[2], 180, c_white, 1);
draw_sprite_ext(global.receptor, 0, laneright, bar, global.mini*bop[3], global.mini*bop[3], 90, c_white, 1);

draw_set_font(f_combo);
draw_set_halign(fa_center);
draw_set_colour(c_white);

if lanes = 8 {
    draw_sprite_ext(global.receptor, 0, laneleftwo, bar, global.mini*bop[4], global.mini*bop[4], -90, c_white, 1);
    draw_sprite_ext(global.receptor, 0, lanedowntwo, bar, global.mini*bop[5], global.mini*bop[5], 0, c_white, 1);
    draw_sprite_ext(global.receptor, 0, laneuptwo, bar, global.mini*bop[6], global.mini*bop[6], 180, c_white, 1);
    draw_sprite_ext(global.receptor, 0, lanerightwo, bar, global.mini*bop[7], global.mini*bop[7], 90, c_white, 1);
    var l;
    for (l=0; l<floor(hp); l++) {
        draw_sprite(s_heart, floor(hp/12), 640, bar+l*16);
    }
    depth = -3;
    draw_text_transformed_colour(blueposaved, bar+230, string_hash_to_newline(string(combo)), floor(combo/100)/6+.5, floor(combo/100)/6+.5, 0, combocolour[0], combocolour[1], combocolour[2], combocolour[3], infoalpha);
    draw_sprite_ext(s_judgement, noterank+3, blueposaved, bar+150, bop[8], bop[8], noterank, c_white, infoalpha);
    depth = 5;
} else {
    var l;
    for (l=0; l<floor(hp); l++) {
        draw_sprite(s_heart, floor(hp/12), laneright+80*global.mini, bar+l*16);
    }
    depth = -3;
    draw_text_transformed_colour(blueposaved, bar+230, string_hash_to_newline(string(combo)), floor(combo/100)/10+.5, floor(combo/100)/10+.5, 0, combocolour[0], combocolour[1], combocolour[2], combocolour[3], infoalpha);
    //draw_text(lanedown+lanespacing/4, bar+400, string(comborank));
    //draw_text(lanedown+lanespacing/4, bar+200, string(ranktext));
    draw_sprite_ext(s_judgement, noterank+3, blueposaved, bar+150, bop[8], bop[8], noterank, c_white, infoalpha);
    depth = 5;
}

//draw_text(100, 100, string(delta_time));




//draw_text(laneright+250, bar+100, string(realscore));
//draw_text(laneright+250, bar+300, string(combo));


draw_line_width(0, chokepoint, window_get_width(), chokepoint, 5);
/*var m;
for (m=0;)
draw_sprite
*/
//draw_text(900, 700, string(timeat));

if count < 230 {
    draw_sprite(s_prep, floor(count/60), 675, 360);
}




/* */
/*  */
