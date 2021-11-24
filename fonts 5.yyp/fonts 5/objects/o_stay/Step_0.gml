if !instance_exists(tail) {
    instance_destroy();
}

if source = o_roll {
    switch image_angle {
        case -90:
            holder = MELODYCHASER.left;
            break;
        case 0:
            holder = MELODYCHASER.down;
            break;
        case 180:
            holder = MELODYCHASER.up;
            break;
        case 90:
            holder = MELODYCHASER.right;
            break;
    }
} else {
    switch image_angle {
        case -90:
            holder = MELODYCHASER.heldleft;
            break;
        case 0:
            holder = MELODYCHASER.helddown;
            break;
        case 180:
            holder = MELODYCHASER.heldup;
            break;
        case 90:
            holder = MELODYCHASER.heldright;
            break;
    }
}
if holder = false {
    countwo++;
    tail.image_alpha -= 1/22;
    if countwo >= 22 {
        hspd = tail.hspd;
        vspd = tail.vspd;
    }
} else {
    countwo = 0;
    tail.image_alpha = 1;
}
if source = o_roll {
    if holder {
        with instance_create(x, y, o_hitfx) {
            image_angle = other.image_angle;
        }
    }
} else if count >= 10 && vspd = 0 && holder {
    with instance_create(x, y, o_hitfx) {
        image_angle = other.image_angle;
    }
    count = 0;
}
/*if place_meeting(x, y, o_tail) {
    instance_destroy();
}*/
count += 1;

x += hspd;
y += vspd;



/* */
/*  */
