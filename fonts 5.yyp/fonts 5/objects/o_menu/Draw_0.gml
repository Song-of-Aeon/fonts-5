draw_set_valign(fa_top);
if room = stagemenu {
    draw_self();
    draw_set_colour(c_white);
    //draw_text(100, 100, string(menuposition));
    draw_set_halign(fa_left);
    if selectoronsong {
        switch menuposition {
            case 0:
                draw_text(652, menuposition*87+162, string_hash_to_newline(""));
                break;
            case 1:
                draw_text(652, menuposition*87+162, string_hash_to_newline("Night of Past"));
                break;
            case 2:
                draw_text(652, menuposition*87+162, string_hash_to_newline("Lancer Raps"));
                break;
            case 3:
                if global.difficulty = 1 {
                    draw_text(652, menuposition*87+162, string_hash_to_newline("Everything Will Freeze"));
                } else {
                    draw_text(652, menuposition*87+162, string_hash_to_newline("Night Falls ~ Evening Star"));
                }
                break;
            case 4:
                draw_text(652, menuposition*87+162, string_hash_to_newline("Reset Set"));
                break;
            case 5:
                if global.difficulty = 1 {
                    draw_text(652, menuposition*87+162, string_hash_to_newline("Eon Break"));
                } else {
                    draw_text(652, menuposition*87+162, string_hash_to_newline("Key"));
                }
                break;
            case 6:
                draw_sprite(s_menu, 3, 0, 0);
                draw_text(652, menuposition*87+162, string_hash_to_newline("Yume ga aru"));
                break;
        }
    }
    
    draw_set_halign(fa_center);
    draw_set_font(f_scoreronaldo);
    draw_sprite_ext(s_scorecloud, 0, 1000, 160, 1.5, 1.2, 0, scoreshowcolour[0], 1);
    draw_sprite_ext(s_scorecloud, 0, 800, 87+160, 1, 1, 0, scoreshowcolour[1], 1);
    draw_sprite_ext(s_scorecloud, 0, 800, 174+160, 1, 1, 0, scoreshowcolour[2], 1);
    draw_sprite_ext(s_scorecloud, 0, 800, 261+160, 1, 1, 0, scoreshowcolour[3], 1);
    draw_sprite_ext(s_scorecloud, 0, 800, 348+160, 1, 1, 0, scoreshowcolour[4], 1);
    draw_sprite_ext(s_scorecloud, 0, 800, 435+160, 1, 1, 0, scoreshowcolour[5], 1);
    
    /*draw_text(1088, 140, string_copy(scoreshow[0], 0, string_length(scoreshow[0])));
    draw_text(858, 87+145, string_copy(scoreshow[1], 0, string_length(scoreshow[1])));
    draw_text(858, 174+145, string_copy(scoreshow[2], 0, string_length(scoreshow[1])));
    draw_text(858, 261+145, string_copy(scoreshow[3], 0, string_length(scoreshow[1])));
    draw_text(858, 348+145, string_copy(scoreshow[4], 0, string_length(scoreshow[1])));
    draw_text(858, 435+145, string_copy(scoreshow[5], 0, string_length(scoreshow[1])));
    
    draw_text(1088, 140, string_digits(scoreshow[0]));
    draw_text(858, 87+145, string_digits(scoreshow[1]));
    draw_text(858, 174+145, string_digits(scoreshow[2]));
    draw_text(858, 261+145, string_digits(scoreshow[3]));
    draw_text(858, 348+145, string_digits(scoreshow[4]));
    draw_text(858, 435+145, string_digits(scoreshow[5]));*/
    
    draw_text(1088, 140, string_hash_to_newline(string(scoreshow[0])));
    draw_text(858, 87+145, string_hash_to_newline(string(scoreshow[1])));
    draw_text(858, 174+145, string_hash_to_newline(string(scoreshow[2])));
    draw_text(858, 261+145, string_hash_to_newline(string(scoreshow[3])));
    draw_text(858, 348+145, string_hash_to_newline(string(scoreshow[4])));
    draw_text(858, 435+145, string_hash_to_newline(string(scoreshow[5])));
    
    draw_sprite_ext(global.receptor, 0, 221+64-24, 250, 1, 1, -90, c_white, 1);
    draw_sprite_ext(global.receptor, 0, 221+128-24, 250, 1, 1, 0, c_white, 1);
    draw_sprite_ext(global.receptor, 0, 221+192-24, 250, 1, 1, 180, c_white, 1);
    draw_sprite_ext(global.receptor, 0, 221+256-24, 250, 1, 1, 90, c_white, 1);
    var noteskinshow = s_kaguya;
    switch global.noteoverride {
        case 0:
            noteskinshow = s_null;
            global.receptor = s_receptor;
            break;
        case 1:
            noteskinshow = s_red;
            global.receptor = s_receptor;
            break;
        case 2:
            noteskinshow = s_aka;
            global.receptor = s_reseputaa;
            break;
        case 3:
            noteskinshow = s_dark;
            global.receptor = s_shadow;
            break;
        case 4:
            noteskinshow = s_sun;
            global.receptor = s_galaxy;
            break;
        case 5:
            noteskinshow = s_trueblue;
            global.receptor = s_acceptor;
            break;
    }
    if global.noteoverride != 0 {
        draw_sprite(noteskinshow, 0, 1120, 286);
    } else 
        draw_text(1120, 270, string_hash_to_newline("Default")); //hate how this is possible, still
    draw_set_halign(fa_center);
    if global.gimmickactive = true {
        draw_text(1120, 440, string_hash_to_newline("Active"));
    } else {
        draw_text(1120, 440, string_hash_to_newline("Inactive"));
    }
    if global.mmod = 0 {
        draw_text(1120, 610, string_hash_to_newline(string(global.xmod)));
    } else {
        draw_text(1120, 610, string_hash_to_newline(string(global.mmod)));
    }
    
    switch real(global.completion) {
        case 1:
            draw_sprite(s_completion, 1, 561, 113);
            break;
        case 2:
            draw_sprite(s_completion, 0, 561, 113);
            draw_sprite(s_completion, 1, 561, 113);
            break;
        default:
            //console_log(global.completion);
            break;
    }
    switch real(global.gimmickcompletion) {
        case 1:
            draw_sprite(s_completion, 3, 561, 113);
            break;
        case 2:
            draw_sprite(s_completion, 2, 561, 113);
            draw_sprite(s_completion, 3, 561, 113);
            break;
    }
    
    //draw_sprite(s_menucover, 0, 207, 591);
    if !lockon {
        draw_sprite_ext(s_cursor, 0, selectorposx, selectorposy, menuxscale, menuyscale, 0, c_white, 1);
    } else {
        draw_sprite_ext(s_cursor, 0, selectorposx, selectorposy, menuxscale, menuyscale, 0, c_blue, 1);
    }
    draw_sprite(s_difficultycursor, 0, 0, difcursy);
} else if room = rhythm_limbo {
    if MELODYCHASER.state = c_receptordanmaku {
        draw_sprite_ext(s_bigdark, 0, 0, 0, 1, 1, 0, c_white, .7);
    } else if MELODYCHASER.state = c_receptorkey {
        draw_sprite_ext(bk_key, 0, 0, 0, 1, 1, 0, c_white, .3);
    }
}

/* */
/*  */
