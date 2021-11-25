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
if fontsmoving <= y-50 {
    fontsmoving += fontspd;
} else {
    fontsmoving -= fontspd;
}

if glowalpha <= .4 {
    glospd = .01;
} else if glowalpha >= 1 {
    glospd = -.01;
}

glowalpha += glospd/2;
fadealpha -= fadespd/2;

count += 1;

if fadealpha <= 0 && countwo <= 490 {
    countwo++;
}
if countwo % 10 = 0 {
    //play a sound effect
}

if ncm(20) {
    if shootdir % 40 = 0 {
        with instance_create(960, 900, o_start) {
            direction = other.shootdir;
            speed = 1;
            image_index = 1;
        }
    } else {
        with instance_create(960, 900, o_start) {
            direction = other.shootdir-180;
            speed = 1;
            image_index = 2;
        }
    }
    shootdir += 20;
}

if select && going = false {
    audio_play_sound(se_select, 0, false);
    //audio_play_sound(m_hurt, 0, false);
    fadealpha = 0;
    fadespd = -.01;
    going = true;
} else if going {
    swapper += 1;
    if swapper % 14 = 0 {
        enteralpha = 0;
    }
    if swapper % 24 = 0 {
        enteralpha = 1;
    }
    if swapper >= 240 {
        //game_load("profile.dat");
        room_goto(stagemenu);
        //console_log("uh oh");
        audio_stop_all();
        instance_destroy();
    }
}




