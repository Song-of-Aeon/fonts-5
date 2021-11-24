
if global.cutscenecount = 0 {
    if count <= 90 {
        x = returnx;
        y = returny;
        x = x + random(count/10) - count/20;
        y = y + random(count/10) - count/20;
    } else if count = 91 {
        x = returnx;
        y = returny;
        if sprite_index = s_worldright {
            hspd = 8;
        } else {
            hspd = -8;
            audio_play_sound(se_shatter, 0, false);
        }
    } else {
        x += hspd;
        hspd = hspd/1.1;
        if hspd <= .02 && count > 180 && sprite_index = s_worldleft {
            instance_create(0, 0, o_fao);
            o_cutscene.active = false;
        }
    }
    count++;
} else if sprite_index = s_worldleft && global.cutscenecount = 2 {
    if count < 0 {
        count++;
    }
    x = returnx;
    y = returny;
    x = x + random(count/10) - count/20;
    y = y + random(count/10) - count/20;
    sidealpha += .05;
} else if sprite_index = s_worldright && global.cutscenecount = 1 {
    if count < 0 {
        count++;
    }
    x = returnx;
    y = returny;
    x = x + random(count/10) - count/20;
    y = y + random(count/10) - count/20;
    sidealpha += .05;
} else if sprite_index = s_worldright {
    sidealpha = 1;
}
image_alpha += .1;

