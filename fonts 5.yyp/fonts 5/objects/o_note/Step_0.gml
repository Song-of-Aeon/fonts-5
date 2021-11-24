count += global.truetime;

if count >= 240 {
    hspd = hspd/(1.1*(global.xmod/8));
    if abs(hspd) <= .2 {
        hspd = 0;
    }
    y += vspd*global.truetime;
}






if y < 720 + sprite_height/2 {
    x = savedx;
    x += hspd*global.truetime;
    if MELODYCHASER.notechange = false && global.songscript = c_reset_set {
        switch dir {
            case 0:
                image_angle = -90;
                break;
            case 1:
                image_angle = 0;
                break;
            case 2:
                image_angle = 180;
                break;
            case 3:
                image_angle = 90;
                break;
        }
    }
    
    if y <= MELODYCHASER.bar {
        if instance_exists(o_textbox) && !tookdir {
            o_textbox.durability--;
            tookdir = true;
        } else if tookdir && y <= -32 {
            instance_destroy();
        }
    }
    if fading {
        if image_alpha > 0 {
            image_alpha -= .1;
        }
        if y < __view_get( e__VW.YView, 0 )/10 || y < MELODYCHASER.bar+32 {
            fading = false;
        }
    } else if image_alpha < 1 {
        image_alpha += .1;
    }
    if MELODYCHASER.noteturn = true {
        image_angle += 20;
        //bitch++;
    }
    if y > MELODYCHASER.chokepoint {
        x = MELODYCHASER.lanedown+MELODYCHASER.lanespacing/4;
        hspd = x-savedx;
    }
}

