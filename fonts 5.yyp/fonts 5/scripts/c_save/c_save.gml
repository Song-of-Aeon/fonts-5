/// @description c_save();
function c_save() {
	if global.scuffer {
	    global.scuffer = false;
	    global.gimmickactive = true;
	    console_log("works");
	}
	countwo = 0;

	if global.storymode = true && hp > 0 /*&& !back && !select*/ { //&& !audio_is_playing(song) || !back
	    with instance_create(0, 0, o_fao) { //we leave
	        leaving = cutscene;
	        //depth = -3;
	    }
	    scoring6 = real(global.scoring[6]);
	    if global.songscript != c_nocturne && global.songscript != c_itsrainingsomewhereelse {
	        scoring6 += MELODYCHASER.realscore/5;
	    }
	    if real(global.scoring[global.currentstage]) < MELODYCHASER.realscore {
	        global.scoring[global.currentstage] = string(MELODYCHASER.realscore);
	        if string_length(global.scoring[global.currentstage] < 4) {
	            if string_char_at(global.scoring[global.currentstage], 2) = "." {
	                global.scoring[global.currentstage] = "0" + global.scoring[global.currentstage];
	            } else {
	                global.scoring[global.currentstage] = global.scoring[global.currentstage] + "0";
	            }
	        }
	        switch comborank {
	            case 1:
	                global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "G");
	                break;
	            case 2:
	                global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "P");
	                break;
	            case 3:
	                if realscore > 95 {
	                    //global.scoring[global.currentstage] = "100.0M";
	                    global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "M");
	                    break;
	                }
            
	            case 99:
	                global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "L");
	                break;
	        }
	    }
	    //if real(global.scoring[0]) < scoring6 {
	        global.scoring[6] = string(scoring6);
	        /*if string_length(global.scoring[0] < 4) {
	            if string_char_at(global.scoring[0], 2) = "." {
	                global.scoring[0] = "0" + global.scoring[0];
	            } else {
	                global.scoring[0] = global.scoring[0] + "0";
	            }
	        }
	        switch o_menu.truecombo {
	            case 1:
	                global.scoring[0] = string(global.scoring[0] + "G");
	                break;
	            case 2:
	                global.scoring[0] = string(global.scoring[0] + "P");
	                break;
	            case 3:
	                global.scoring[0] = string(global.scoring[0] + "M");
	                break;
            
	        }*/
	    //}
	    //if global.songscript != c_nocturne {
	        global.cutscenecount++;
	    //}
	} else {
	    if hp <= 0 {
	        comborank = 99;
	    }
	    with instance_create(0, 0, o_fao) {
	        leaving = stagemenu;
	    }
	    global.storemode = false;
	    if real(global.scoring[global.currentstage]) < MELODYCHASER.realscore {
	        global.scoring[global.currentstage] = string(MELODYCHASER.realscore);
	        if string_length(global.scoring[global.currentstage] < 4) {
	            if string_char_at(global.scoring[global.currentstage], 2) = "." {
	                global.scoring[global.currentstage] = "0" + global.scoring[global.currentstage];
	            } else {
	                global.scoring[global.currentstage] = global.scoring[global.currentstage] + "0";
	            }
	        }
	        switch comborank {
	            case 1:
	                global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "G");
	                break;
	            case 2:
	                global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "P");
	                break;
	            case 3:
	                if realscore > 95 {
	                    //global.scoring[global.currentstage] = "100.0M";
	                    global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "M")
	                    break;
	                }
                
	            case 99:
	                global.scoring[global.currentstage] = string(global.scoring[global.currentstage] + "L");
	                break;
	        }
	    }
	}
	if instance_exists(o_ChromaticAbberation) { //get rid of this for chance to mega glitch
	    with o_ChromaticAbberation {
	        intensity = 0;
	    }
	    application_surface_draw_enable(true);
	}
	audio_stop_all();



}
