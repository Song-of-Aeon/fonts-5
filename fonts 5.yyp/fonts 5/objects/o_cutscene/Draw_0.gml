/*draw_set_colour(c_white);
draw_text(50, 50, room_get_name(room));
draw_text(50, 70, string(global.cutscenecount));
draw_text(50, 90, string(global.storymode));
draw_text(50, 110, string(active));
draw_set_colour(c_black);*/
if room = cutscene {
    switch global.cutscenecount {
        case 0:
            break;
        case 6:
            draw_sprite_ext(s_tars, 1, 0, 0, 4, 4, 0, c_white, 1);
            draw_sprite_ext(s_hip, mycount%4, 64, 428, 4, 4, 0, c_white, 1);
            break;
        default:
            draw_sprite_ext(s_tars, 0, 0, 0, 4, 4, 0, c_white, 1);
            draw_sprite_ext(s_hip, mycount%4, 64, 128, 4, 4, 0, c_white, 1);
            break;
    }
}

/* */
/*  */
