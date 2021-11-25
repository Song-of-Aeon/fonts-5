if pulse {
    switch sky {
        case 0:
            with instance_create(o_dancer.x-100+irandom(200), o_dancer.y-450, o_hurt) {
                grav = .4;
                hspd = -3+random(6);
                vspd = -4;
            }
            break;
        
        case 1:
            with instance_create(x, y, o_hurt) {
                speed = 12;
                direction = point_direction(x, y, o_dancer.x, o_dancer.y);
            }
            break;
        
        case 2:
            with instance_create(0, 0, o_hurt) {
                hspd = 16;
                vspd = 9;
            }
            break;
        
        case 3:
            with instance_create(room_width, 0, o_hurt) {
                hspd = -16;
                vspd = 9;
            }
            break;
    }
    if sky < 1 {
        sky++;
    } else {
        sky = 0;
    }
    pulse = false;
}
/*while count != 0 {
    
}*/
