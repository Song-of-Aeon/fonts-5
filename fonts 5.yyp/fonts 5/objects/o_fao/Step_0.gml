drawdark += .05;

if drawdark >= 1.2 {
    window_set_cursor_sprite(cr_defrag, 0);
    if !window_get_fullscreen() && global.songscript = c_eonbreak && global.gimmickactive {
        windowx = global.ogx;
        windowy = global.ogy;
    }
    shader_reset();
    application_surface_draw_enable(true);
    room_goto(leaving);
    if leaving = stagemenu {
        ini_open("profile.ini");
        if global.storymode = true && real(global.scoring[0]) <= real(global.scoring[6]) { //this is from melodychaser
            if string_length(global.scoring[6] < 4) {
                if string_char_at(global.scoring[6], 2) = "." {
                    global.scoring[6] = "0" + global.scoring[6];
                } else {
                    global.scoring[6] = global.scoring[6] + "0";
                }
            }
            switch o_menu.truecombo {
                case 1:
                    global.scoring[6] = string(global.scoring[6] + "G");
                    break;
                case 2:
                    global.scoring[6] = string(global.scoring[6] + "P");
                    break;
                case 3:
                    global.scoring[6] = string(global.scoring[6] + "M");
                    break;
                
            }
            console_log(script_get_name(global.songscript));
            global.scoring[0] = global.scoring[6];
            if global.songscript = c_eonbreak || global.songscript = c_key {
                global.completion = ini_write_string("story", "completion", string(global.difficulty+1));
                if global.gimmickactive {
                    global.gimmickcompletion = ini_write_string("story", "gimmick", string(global.difficulty+1));
                }
            }
        }
        //game_save("profile.dat");
        var i;
        for (i=0; i<6; i++) {
            ini_write_string("scores"+string(global.difficulty), "stage " + string(i), global.scoring[i]);
        }
        ini_close();
        o_cutscene.active = false;
        global.storymode = false;
        global.cutscenecount = 0;
        audio_play_sound(m_night, 0, false);
    } else if leaving = cutscene {
        o_cutscene.active = true;
    } else if leaving = rhythm_limbo {
        o_cutscene.active = false;
    }
    if keyboard_check_pressed(vk_control) {
        console_log(instance_number(o_fao));
        console_log(instance_count);
        console_log(drawdark);
    }
}

