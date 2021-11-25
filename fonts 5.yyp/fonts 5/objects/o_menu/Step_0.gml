if room = stagemenu {
    depth = 0;
    truecombo = 3;
    if o_controls.going = true {
        c_input();
        if alt && select {
            if window_get_fullscreen() {
                window_set_fullscreen(false);
                window_set_position(global.ogx, global.ogy);
            } else {
                window_set_fullscreen(true);
            }
            select = false;
        }
    }
    global.megastream = false;
    
    if selectoronsong {
        if selectorposy = selectorsavey && menuposition = 0 {
            selectorposy = 127;
            selectorsavey = 127;
        }
        if up && menuposition > 0 {
            
            selectorvspd = -87;
            selectorsavevspd = -87;
            selectorsavey -= 87;
            menuposition--;
            if menuposition = 1 {
                selectorposy++;
                selectorsavey++;
            }
        }
        if down && menuposition < 5+ceil(real(global.completion)/2) { //6 for super test
            
            selectorvspd = 87;
            selectorsavevspd = 87;
            selectorsavey += 87;
            menuposition++;
            if menuposition = 0 {
                selectorposy--;
                selectorsavey--;
            }
        }
        
    if menuposition >= 1 {
           /* if selectorposy < menuposition*87+128 {
                selectorposy += 3;
            } else if selectorposy > menuposition*87+128 {
                selectorposy -= 3;
            }*/
            if menuxscale > 1 {
                menuxscale -= .05;
            }
            if menuyscale > 1 {
                menuyscale -= .15;
            }
        } else {
            /*if selectorposy < menuposition*87+129 {
                selectorposy += 3;
            } else if selectorposy > menuposition*87+129 {
                selectorposy -= 3;
            }*/
            if menuxscale < 2 {
                menuxscale += .05;
            }
            if menuyscale < 1.2 {
                menuyscale += .15;
            }
        }
        
        var i;
        for (i=0; i<6; i++) {
            scoreshowcolour[i] = c_white;
            switch string_copy(global.scoring[i], string_length(global.scoring[i]), 1) {
                case "M":
                    scoreshowcolour[i] = c_teal;
                    break;
                case "P":
                    scoreshowcolour[i] = c_yellow;
                    break;
                case "G":
                    scoreshowcolour[i] = c_green;
                    break;
                case "L":
                    scoreshowcolour[i] = c_red;
                    break;
                case "":
                    scoreshowcolour[i] = c_white;
                    break;
            }
            scoreshow[i] = string_copy(global.scoring[i], 1, 5);
            
        }
        
        
        
        
        if select && !instance_exists(o_fao) {
            switch menuposition {
                case 0:
                    global.songscript = c_combattheme;
                    global.storymode = true;
                    break;
                case 1:
                    global.songscript = c_combattheme;
                    break;
                case 2:
                    global.songscript = c_lancerraps;
                    break;
                case 3:
                    global.songscript = c_everythingwillfreeze;
                    break;
                case 4:
                    global.songscript = c_reset_set;
                    break;
                case 5:
                    global.songscript = c_eonbreak;
                    break;
                case 6:
                    //global.songscript = c_eveniftheworlddeceivesyou;
                    //global.songscript = c_nocturne;
                    //global.songscript = c_itsrainingsomewhereelse;
                    global.songscript = c_yumegaaru;
                    break;
            }
            audio_play_sound(se_select, 0, false);
            //if menuposition > 0 {
                global.currentstage = menuposition;
            /*} else {
                global.currentstage = 0;
            }*/
            audio_stop_sound(m_night);
            if menuposition != 0 {
                instance_create(0, 0, o_fao);
            } else {
                with instance_create(0, 0, o_fao) {
                    leaving = cutscene;
                }
            }
        }
    } else {
        if lockon = 0 {
            if select {
                lockon = menuposition+1;
            }
            if up && menuposition > 0 {
                menuposition--;
                selectorvspd = -174;
                selectorsavevspd = -174;
                selectorsavey -= 174;
            }
            if down && menuposition < 2 {
                menuposition++;
                selectorvspd = 174;
                selectorsavevspd = 174;
                selectorsavey += 174;
            }
        } else if lockon = 1 {
            if left && global.noteoverride > 0
                global.noteoverride--;
            if right && global.noteoverride < 5
                global.noteoverride++;
            if back || select
                lockon = 0;
        } else if lockon = 2 {
            global.gimmickactive = !global.gimmickactive;
            lockon = 0;
        } else if lockon = 3 {
            if global.mmod = 0 {
                if left && global.xmod > .5
                    global.xmod -= .5;
                if right && global.xmod < 20
                    global.xmod += .5;
                if down
                    global.mmod = 500;
                image_index = 1;
            } else {
                if left && global.mmod > 100
                    global.mmod -= 25;
                if right && global.mmod < 1000
                    global.mmod += 25;
                if down
                    global.mmod = 0;
                image_index = 0;
            }
            if back || select
                lockon = 0;
            
        if selectorposy < menuposition*174+215 {
        }
            selectorposy += 6;
        } else if selectorposy > menuposition*174+215 {
            selectorposy -= 6;
        }
        switch menuposition {
            case 0:
                if menuxscale > 1.2 {
                    menuxscale -= .05;
                }
                if menuxscale < 1.2 {
                    menuxscale += .05;
                }
                break;
            case 1:
                if menuxscale > 1.15 {
                    menuxscale -= .05;
                }
                if menuxscale < 1.15 {
                    menuxscale += .05;
                }
                break;
            case 2:
                if menuxscale > 0.8 {
                    menuxscale -= .05;
                }
                if menuxscale < 0.8 {
                    menuxscale += .05;
                }
                break;
        }
        if menuyscale > 1 {
            menuyscale -= .05;
        }
    }
    if (left || right) && lockon = 0 {
        selectoronsong = !selectoronsong;
        if !selectoronsong {
            menuposition = floor(menuposition/2.5);
            selectorposx = 1037;
            selectorposy = 214+menuposition*174;
            selectorsavey = 214+menuposition*174;
            selectorvspd = 0;
            menuxscale = 1;
            menuyscale = 1;
        } else {
            menuposition = ceil(menuposition*2.5);
            selectorposx = 652;
            selectorposy = 127+menuposition*87+ceil(menuposition/10);
            selectorsavey = 127+menuposition*87+ceil(menuposition/10);
            selectorvspd = 0;
            menuxscale = 1;
            menuyscale = 1;
        }
    }
    selectorposy = selectorsavey;
    selectorvspd = selectorvspd/2;
    selectorposy -= selectorvspd;
    
    if swap {
        global.difficulty = abs(global.difficulty-1);
        if file_exists("profile.ini") {
            //game_load("profile.dat");
            ini_open("profile.ini");
            global.scoring[0] = ini_read_string("scores"+string(global.difficulty), "stage 0", "00.00L");
            global.scoring[1] = ini_read_string("scores"+string(global.difficulty), "stage 1", "00.00L");
            global.scoring[2] = ini_read_string("scores"+string(global.difficulty), "stage 2", "00.00L");
            global.scoring[3] = ini_read_string("scores"+string(global.difficulty), "stage 3", "00.00L");
            global.scoring[4] = ini_read_string("scores"+string(global.difficulty), "stage 4", "00.00L");
            global.scoring[5] = ini_read_string("scores"+string(global.difficulty), "stage 5", "00.00L");
            global.scoring[6] = ini_read_string("scores"+string(global.difficulty), "stage 6", "00.00L");
            global.completion = ini_read_string("story", "completion", "0");
            global.gimmickcompletion = ini_read_string("story", "gimmick", "0");
            ini_close();
        }
        difcursavedy = 49+abs(global.difficulty-1)*76;
        difcurvspd = difcursavedy-difcursy;
        
        
    }
    
    difcursy = difcursavedy;
    difcurvspd = difcurvspd/2;
    difcursy -= difcurvspd;
    
    if keyboard_check_pressed(ord("Y")) {
        global.streamstring = !global.streamstring;
    }
}

/*if keyboard_check_pressed(ord('H')) {
    global.hidden = !global.hidden;
}*/

if room = rhythm_limbo {
    if MELODYCHASER.comborank <= truecombo {
        truecombo = MELODYCHASER.comborank;
    }
    depth = -1;
}

//global.streamstring = ;

/*if left {
    switch global.red {
    }
}*/
//console_log(global.completion);

/* */
/*  */
