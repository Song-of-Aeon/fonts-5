c_input();
/*var i;
for (i=0; i<array_length_1d(noteset); i++) {
    var timeof = (real(string_copy(noteset[i], 8, string_length(noteset[i])-7)));
    if MELODYCHASER.timeat = timeof {
        with instance_create(64, i*(32/real(noteset[6]))*xmod+MELODYCHASER.bar, notemaker[0]) {
            dir = 0;
            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
        }
        with instance_create(128, i*(32/real(noteset[6]))*xmod+MELODYCHASER.bar, notemaker[1]) {
            dir = 1;
            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
        }
        with instance_create(192, i*(32/real(noteset[6]))*xmod+MELODYCHASER.bar, notemaker[2]) {
            dir = 2;
            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
        }
        with instance_create(256, i*(32/real(noteset[6]))*xmod+MELODYCHASER.bar, notemaker[3]) {
            dir = 3;
            vspd = -(other.bpm/c_bpmbuster())*other.xmod;
        }
    }
}*/
/*if global.storymode = false {
    if audio_is_playing(MELODYCHASER.audio) = false && back && !instance_exists(o_fao) {
        with instance_create(0, 0, o_fao) {
            leaving = stagemenu;
        }
        if real(MELODYCHASER.realscore) > real(global.scoring[global.currentstage]) {
            global.scoring[global.currentstage] = MELODYCHASER.realscore;
        }
    }
} else if global.storymode = true {
    if audio_is_playing(MELODYCHASER.audio) = false && back && !instance_exists(o_fao) {
        audio_stop_sound(MELODYCHASER.audio);
        with instance_create(0, 0, o_fao) {
            leaving = cutscene;
            depth = -3;
        }
        //global.scoring[0] += MELODYCHASER.realscore/5;
        global.cutscenecount++;
    }
}*/

/*if keyboard_check_pressed(ord('R')) {
    with o_note {
         y -= 32*xmod;
    }
    with o_tail {
         y -= 32*xmod;
    }
    with o_switch {
         y -= 32*xmod;
    }
    with o_switchback {
         y -= 32*xmod;
    }
    with o_gimmickactivator {
         y -= 32*xmod;
    }
}
if keyboard_check_pressed(ord('T')) {
    with o_note {
         y += 32*xmod;
    }
    with o_tail {
         y += 32*xmod;
    }
    with o_switch {
         y += 32*xmod;
    }
    with o_switchback {
         y += 32*xmod;
    }
    with o_gimmickactivator {
         y += 32*xmod;
    }
}*/

/* */
/*  */
