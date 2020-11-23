///c_savetwo();

//melodychaser(me).realscore becomes global.currentstage's global.scoring
//but only a four-character string
//probably wants to cap out at 100
//and check if its a leave win or a win win
//if comborank is not zero append a letter at the end

//something needs to save the whole story score or at least compound all the scores/5

if global.scuffer {
    global.scuffer = false;
    global.gimmickactive = true;
    console_log("works");
}
countwo = 0;

if global.storymode && hp >= 1 && !back && !select {
    
    if global.songscript != c_nocturne && global.songscript != c_itsrainingsomewhereelse {
        console_log(global.scoring[7], realscore);
        global.scoring[7] += realscore/5;
        global.currentstage++;
    }
    global.cutscenecount++;
    with instance_create(0, 0, o_fao) { //we leave
        leaving = cutscene;
    }
} else {
    
    global.scoring[7] = 0;
    
    with instance_create(0, 0, o_fao) {
        leaving = stagemenu;
    }
}
if hp <= 0 {
    comborank = 99;
}
if global.songscript != c_nocturne && global.songscript != c_itsrainingsomewhereelse && global.songscript != c_yumegaaru {
    if real(global.scoring[global.currentstage]) < realscore {
        global.scoring[global.currentstage] = string_format(realscore, 2, 6);
        
        //if string_length(global.scoring[global.currentstage] < 4) {
            if real(global.scoring[global.currentstage]) >= 1 {
                //global.scoring[global.currentstage] = "00.00";
            } else {
                global.scoring[global.currentstage] = string_copy(global.scoring[global.currentstage] + "00.00", 0, 4);
                //global.scoring[global.currentstage] = 0;
            }
        //}
        
        switch comborank {
            case 1:
                global.scoring[global.currentstage] = global.scoring[global.currentstage] + "G";
                break;
            case 2:
                global.scoring[global.currentstage] = global.scoring[global.currentstage] + "P";
                break;
            case 3:
                if realscore > 95 { //listen man i know that the way this is set up is actually degenerate but i literally Want To Release The Game.
                    global.scoring[global.currentstage] = "100.0M";
                    break;
                }
                
            case 99:
                global.scoring[global.currentstage] = global.scoring[global.currentstage] + "L";
                break;
            default:
                global.scoring[global.currentstage] = global.scoring[global.currentstage] + ".";
        }
        
    }
}
if real(global.scoring[6]) < global.scoring[7] {
    global.scoring[6] = string_copy(global.scoring[7], 0, 5);
}

if instance_exists(o_ChromaticAbberation) { //get rid of this for chance to mega glitch
    with o_ChromaticAbberation {
        intensity = 0;
    }
    application_surface_draw_enable(true);
}
audio_stop_all();
