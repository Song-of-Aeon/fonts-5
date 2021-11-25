if active = true {
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
    if select || back {
        count = 999;
    }
    mycount += .2;
    if global.cutscenecount >= 1 {
        __background_set( e__BG.Index, 0, bk_nebula );
        backgroundpos--;
        __background_set( e__BG.X, 0, backgroundpos );
        __background_set( e__BG.HTiled, 0, true );
    }
    switch global.cutscenecount {
        case 0:
            if words < 48 {
                if count % 5 = 0 {
                
                    with instance_create(column*240+120, (row+1)*53, o_text) {
                        image_index = other.words;
                    }
                    words++
                    if row >= 11 {
                        row = 0;
                        column++;
                    } else {
                        row++;
                    }
                    count = 0;
                }
            } else {
                if count = 30 {
                    with instance_create(850, 0, o_text) {
                        turning = 0;
                        sprite_index = AMORTALITY;
                    }
                }
                if count = 120 {
                    with instance_create(1000, 565, o_worldbreak) {
                        sprite_index = s_worldright;
                        sidealpha = -500;
                    }
                    with instance_create(1000, 565, o_worldbreak) {
                        sprite_index = s_worldleft;
                        sidealpha = -500;
                    }
                }
                
            }
            if count >= 900 {
                    instance_create(0, 0, o_fao);
                    o_cutscene.active = false;
                }
            count++;
            break;
        
        
        
        
        
        case 1:
            if count = 10 {
                with instance_create(640, 360, o_worldbreak) {
                    sprite_index = s_worldleft;
                    image_xscale = 4;
                    image_yscale = 4;
                }
                with instance_create(640, 360, o_worldbreak) {
                    sprite_index = s_worldright;
                    image_xscale = 4;
                    image_yscale = 4;
                }
            }
            if count > 180 {
                global.songscript = c_lancerraps;
                instance_create(0, 0, o_fao);
                o_cutscene.active = false;
            }
            count++;
            break;
        case 2:
            if count = 10 {
                with instance_create(640, 360, o_worldbreak) {
                    sprite_index = s_worldright;
                    image_xscale = 4;
                    image_yscale = 4;
                }
                with instance_create(640, 360, o_worldbreak) {
                    sprite_index = s_worldleft;
                    image_xscale = 4;
                    image_yscale = 4;
                }
            }
            if count > 180 {
                global.songscript = c_everythingwillfreeze;
                instance_create(0, 0, o_fao);
                o_cutscene.active = false;
            }
            count++;
            break;
        case 3:
            if count = 10 {
                with instance_create(640, 360, o_world) {
                    image_xscale = 4;
                    image_yscale = 4;
                }
            }
            if count > 180 {
                //if global.difficulty = 1 {
                    global.songscript = c_nocturne;
                /*} else {
                    global.songscript = c_reset_set;
                    global.cutscenecount++;
                }*/
                instance_create(0, 0, o_fao);
                o_cutscene.active = false;
            }
            count++;
            break;
        case 4:
            global.songscript = c_reset_set;
            with instance_create(0, 0, o_fao) {
                drawdark = 1;
            }
            o_cutscene.active = false;
            break;
        case 5:
            if count = 10 {
                with instance_create(640, 360, o_world) {
                    image_xscale = 4;
                    image_yscale = 4;
                    rotation = true;
                }
            }
            if count > 180 {
                global.songscript = c_eonbreak;
                instance_create(0, 0, o_fao);
                o_cutscene.active = false;
            }
            count++;
            break;
        case 6:
            if count = 10 {
                with instance_create(640, 500, o_world) {
                    image_xscale = 4;
                    image_yscale = 4;
                    rotation = true;
                    drawer = 1;
                }
            }
            if count > 180 {
                global.songscript = c_itsrainingsomewhereelse;
                o_cutscene.active = false;
                instance_create(0, 0, o_fao);
            }
            count++;
            break;
        case 7:
            with instance_create(0, 0, o_fao) {
                leaving = stagemenu;
            }
            break;
    }
} else {
    count = 0;
    words = 0;
    row = 0;
    column = 0;
}

/* */
/*  */
