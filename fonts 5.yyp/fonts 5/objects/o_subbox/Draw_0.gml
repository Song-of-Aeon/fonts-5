//draw_self();
draw_set_valign(fa_middle);
draw_sprite_ext(s_textbg, 0, x, y+16, clamp((string_length(txt)/2)/12, 0, 1.2), 1, 0, c_white, txtalpha/2);
draw_sprite_ext(s_textbg, 0, MELODYCHASER.laneleft-120, MELODYCHASER.bar+string_length(txtwo)*8, (string_length(txtwo)/1.5)/12, 1, 90, c_white, txtalpha/1.3);

var whatever = draw_get_colour();
draw_set_colour(c_white);
if durability > 0 {
    draw_set_font(f_textronaldo);
    draw_set_halign(fa_center);
    draw_text_ext_transformed_colour(x+5, y+5+8, string_hash_to_newline(txt), 30, 300*global.mini, 1, 1, txturn, speaker, speaker, speaker, speaker, txtalpha/1.3);
    draw_text_ext_transformed_colour(x, y+8, string_hash_to_newline(txt), 30, 300*global.mini, 1, 1, txturn, c_white, c_white, c_white, c_white, txtalpha);
    
    draw_set_font(f_udgothic);
    draw_set_halign(fa_left);
    /*draw_text_ext_transformed_colour(x+durability*4, 600+durability*4, txtwo, 20, 1260, 1, 1, txturn, speaker, speaker, speaker, speaker, txtalpha);
    draw_text_ext_transformed_colour(x, 600, txtwo, 20, 1260, 1, 1, txturn, c_white, c_white, c_white, c_white, txtalpha);*/
    draw_text_ext_transformed_colour(MELODYCHASER.laneleft-120+8+5, MELODYCHASER.bar+5, string_hash_to_newline(txtwo), 30, 1280, 1, 1, -90, speaker, speaker, speaker, speaker, txtalpha/1.3);
    draw_text_ext_transformed_colour(MELODYCHASER.laneleft-120+8, MELODYCHASER.bar, string_hash_to_newline(txtwo), 30, 1280, 1, 1, -90, c_white, c_white, c_white, c_white, txtalpha);
    //draw_sprite(s_black, 0, 0, 0);
}
draw_set_colour(whatever);


/* */
/*  */
