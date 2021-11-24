if !instance_exists(tail) {
    instance_destroy();
}



count += global.truetime;
if count >= 240 {
    
    y += vspd*global.truetime;
}


if tail != 0 {
    with tail {
        head = other.id;
    }
    
}



if y < 720 + sprite_height/2 {
    x += hspd*global.truetime;
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
}

