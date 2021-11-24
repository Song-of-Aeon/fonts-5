image_xscale = image_xscale*1.2;
image_xscale = clamp(image_xscale, -3, 3);
switch spellcard {
    case "Temporal Mark [Melody Chaser]":
        count++;
        if count = 20 {
            shootingdir = random(90) - 45;
            minus = (irandom(1)-.5)*2;
        } else if count > 20 {
            with instance_create(x, y-(count-20)*8, o_slowknife) {
                //speed = 4;
                direction = other.shootingdir+(other.count-20)*other.minus-90;
                //direction = point_direction(x, y, o_soul.x, o_soul.y);
            }
        }
        if count > 40 {
            count = 0;
        }
        break;
    
    case "Pointed Moment [Guignol's Grace]":
        count++;
        if count >= 96 {
            with instance_create(x+random(MELODYCHASER.lanespacing*2)-MELODYCHASER.lanespacing, y, o_privatesquare) {
                direction = -90;
                speed = 2;
            }
            count = 0;
        }
        if count % 48 = 0 {
            var i;
            for (i=random(.7)-1.35; i<2; i++) {
                with instance_create(x, y, o_bounceknife) {
                    hspd = i*3;
                    vspd = 6;
                }
            }
        }
        break;
}

