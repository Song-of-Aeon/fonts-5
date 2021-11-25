c_input();
if autoplay {
    c_autoplay();
}
if alt && select && global.songscript != c_eonbreak && global.gimmickactive {
    if window_get_fullscreen() {
        window_set_fullscreen(false);
        window_set_position(global.ogx, global.ogy);
    } else {
        window_set_fullscreen(true);
    }
    select = false;
}

/*if keyboard_check_pressed(ord('R')) {
    instance_destroy(o_smparser);
    instance_destroy(o_note);
    instance_create(0, 0, o_smparser);
}*/
if !instance_exists(o_smparser) {
    if select {
        songstarting = true;
        window_set_cursor_sprite(s_null, 0);
        with o_help {
            savedy = room_height + sprite_height/2 + 5;
            vspd = y-savedy;
            console_log(savedy);
            console_log(vspd);
            going = true;
        }
        instance_create(0, 0, o_smparser);
    }
    if up && global.mini < 3 {
        global.mini += .1;
        minibig = (global.mini-1)*64;
        if global.songscript = c_lancerraps {
            laneleft = 394-96-minibig*1.5;
            lanedown = 394-32-minibig*.5;
            laneup = 394+32+minibig*.5;
            laneright = 394+96+minibig*1.5;
            laneleftwo = 884-96-minibig*1.5;
            lanedowntwo = 884-32-minibig*.5;
            laneuptwo = 884+32+minibig*.5;
            lanerightwo = 884+96+minibig*1.5;
        } else {
            laneleft = 544-minibig*1.5;
            lanedown = 608-minibig*.5;
            laneup = 672+minibig*.5;
            laneright = 736+minibig*1.5;
        }

    }
    if down && global.mini > .5 {
        global.mini -= .1;
        minibig = (global.mini-1)*64;
        if global.songscript = c_lancerraps {
            laneleft = 394-96-minibig*1.5;
            lanedown = 394-32-minibig*.5;
            laneup = 394+32+minibig*.5;
            laneright = 394+96+minibig*1.5;
            laneleftwo = 884-96-minibig*1.5;
            lanedowntwo = 884-32-minibig*.5;
            laneuptwo = 884+32+minibig*.5;
            lanerightwo = 884+96+minibig*1.5;
        } else {
            laneleft = 544-minibig*1.5;
            lanedown = 608-minibig*.5;
            laneup = 672+minibig*.5;
            laneright = 736+minibig*1.5;
        }

    }
    

}/* else if instance_exists(o_smparser) {
    timeat += delta_time/1000000;
} else {
    timeat = 0;
}*/
if songstarting {
	if delta_time < 20000 {
		timecounter += delta_time;
	}
    if timecounter/1000 >= offset {
        if count = 0 {
            instance_create(800, 500, o_zero);
        }
		
			count += global.truetime;
        if (count >= 305 && global.songscript = c_eonbreak) || (count >= 300 && global.songscript != c_eonbreak) {
        
        //if (count >= 235 && global.songscript = c_eonbreak) || (count >= 230 && global.songscript != c_eonbreak){
            audio_play_sound(audio, 0, false);
            songstarting = false;
            instance_create(640, bar+100, o_subbox);
        }
    }
    
}




/*if keyboard_check_pressed(vk_subtract) {
    xmod -= .05;
}
if keyboard_check_pressed(vk_add) {
    xmod += .05;
}*/

state();

var i;
for (i=0; i<8; i++) {
    bop[i] += .05;
    bop[i] = clamp(bop[i], 0, 1);
}
bop[8] -= .05;
bop[8] = clamp(bop[i], 1, 2);

var j;
lanespacing = laneup - laneleft;
//for (j=laneleft; j<=laneup; j+=lanespacing/2) {
    //var note = instance_place(j, bar-bpm*global.xmod/20-128, o_note); CUCK MODE NOTE CHECKING LOL
    var note = collision_line(0, bar-bpm*global.xmod/20-128, room_width, bar-bpm*global.xmod/20-128, o_note, false, false);
    if note != noone {
        if note.object_index = o_freeze || note.object_index = o_roll {
            with note.tail {
                unusable = true;
                head = 0;
            }
            combo = 0;
            bop[8] = 1.3;
            noterank = 4;
            hp -= 1;
            realscore -= 100/notecount*5;
            infoalpha += .2;
            infoalpha = clamp(infoalpha, 1.6, 4);
            combocolour[3] = combocolour[2];
            combocolour[2] = combocolour[1];
            combocolour[1] = combocolour[0];
            combocolour[0] = c_red;
        } else if note.object_index != o_mine {
            combo = 0;
            bop[8] = 1.3;
            noterank = 4;
            hp -= 1;
            realscore -= 100/notecount*5;
            infoalpha += .2;
            infoalpha = clamp(infoalpha, 1.6, 4);
            combocolour[3] = combocolour[2];
            combocolour[2] = combocolour[1];
            combocolour[1] = combocolour[0];
            combocolour[0] = c_red;
        }
        if instance_exists(o_textbox) {
            o_textbox.durability--;
        }
        instance_destroy(note);
        
    }
    /*if instance_exists(instance_place(j, bar, o_tail)) {
        if instance_place(j, bar, o_tail).y <= bar-64 || instance_place(j, bar, o_tail).y <= instance_place(j, bar, o_tail).head.y+32 {
            with head {
                instance_destroy();
            }
        }
        instance_destroy();
        
    }
}*/

/*if lanes = 8 {
    switch state {
        case c_receptorinput:
            if swap {
                state = c_receptorinputwo;
                lanespeed = 32;
            }
            if laneselected > 159 {
                laneselected += lanespeed;
                lanespeed = lanespeed/1.09;
            }
            break;
        case c_receptorinputwo:
            if swap {
                state = c_receptorinput;
                lanespeed = -32;
            }
            if laneselected < 543 {
                laneselected += lanespeed;
                lanespeed = lanespeed/1.09;
            }
            break;
    }
}*/





/*if(keyboard_check(vk_f1)){
    instance_create(0,0,o_ChromaticAbberation);
}*/

if hp > 12 {
    hp = 12;
}

infoalpha -= .03;
infoalpha = clamp(infoalpha, 0, 4);

if !instance_exists(o_note) && instance_exists(o_smparser) {
    countwo++;
    console_log("it's rude to talk about someone who's listening.");
}

if back && !instance_exists(o_leaving) {
    back = false;
    instance_create(room_width/2, room_height/2, o_leaving);
}

if (back && !instance_exists(o_fao)) || (select && global.controller = true && count > 1) || (hp < 1) || countwo >= 300 { //ha
    c_savetwo();
}

switch global.songscript {
    case c_lancerraps:
        c_flashfall_gimmicks();
        break;
    case c_nightfalls:
        c_nightfalls_gimmicks();
        break;
    case c_everythingwillfreeze:
        c_everythingwillfreeze_gimmicks();
        break;
    case c_reset_set:
        c_reset_set_gimmicks();
        break;
    case c_key:
        c_key_gimmicks();
        break;
    case c_eonbreak:
        c_eonbreak_gimmicks();
        break;
    case c_yumegaaru:
        c_yumegaaru_gimmicks();
        break;
    
    default:
        if inputgimmick = false {
            if arrayx[arraypos] = "T"  {
                if global.storymode = true {
                    instance_create(640, bar+100, o_textbox);
                }
            }
            inputgimmick = true;
        }
        break;
}

/*if inputgimmick = false {
    if arrayx[arraypos] = "T"  {
        if global.storymode = true {
            instance_create(630, bar+100, o_textbox);
        }
    }
}*/

if lanes > 4 {
    if swap {
        switch state {
            case c_receptorinput:
                    state = c_receptorinputwo;
                    blueposaved = 884;
                    bluehspd = 490;
                break;
            case c_receptorinputwo:
                    state = c_receptorinput;
                    blueposaved = 394;
                    bluehspd = -490;
                break;
        }
    }
    bluepos = blueposaved;
    bluehspd = bluehspd/2;
    bluepos -= bluehspd;
}

if global.gimmickactive = false {
    lanes = 4;
}
if global.controller {
    gamepad_set_vibration(0, rumble[0]+rumble[1]/1.5+rumble[2]/2.5, rumble[3]+rumble[2]/1.5+rumble[1]/2.5);
    //gamepad_set_vibration(0, 1, 0);
    
    var k;
    for (k=0; k<array_length_1d(rumble); k++) {
        rumble[k] -= .1;
        rumble[k] = clamp(rumble[k], 0, 1);
    }
}

global.truetime = c_timebuster();

//console_log(window_get_x());

/* */
/*  */
