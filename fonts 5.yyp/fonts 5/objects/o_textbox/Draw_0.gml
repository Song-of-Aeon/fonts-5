//draw_self();
draw_set_valign(fa_middle);
draw_sprite_ext(s_textbg, 0, MELODYCHASER.bluepos, y+16, clamp((string_length(message_draw)/2)/12, 0, 1.2), 1, 0, c_white, txtalpha/2)
draw_set_halign(fa_center);
var whatever = draw_get_colour();
draw_set_colour(c_white);
draw_set_font(f_textronaldo);
draw_text_ext_transformed_colour(MELODYCHASER.bluepos+durability, y+durability+8, string_hash_to_newline(message_draw), 30, 300*global.mini, 1, 1, txturn, c_teal, c_teal, c_teal, c_teal, txtalpha/1.3);
draw_text_ext_transformed_colour(MELODYCHASER.bluepos, y+8, string_hash_to_newline(message_draw), 30, 300*global.mini, 1, 1, txturn, c_white, c_white, c_white, c_white, txtalpha);
draw_set_colour(whatever);
var applesauce = whatever;
draw_set_colour(applesauce);
//draw_text_colour(caramelsause); mcguirescript
var draw_text_creamsauce = 17;
var applesauce = (draw_text_creamsauce);

