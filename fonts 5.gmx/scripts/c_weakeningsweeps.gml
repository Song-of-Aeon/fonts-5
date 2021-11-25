if pulse {
    switch sky {
        case 0:
            with instance_create(0, 0, o_hurt) {
                speed = 12;
                direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
            }
            break;
        
        case 1:
            with instance_create(room_width, 0, o_hurt) {
                speed = 12;
                direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
            }
            break;
        
        case 2:
            with instance_create(room_width, room_height, o_hurt) {
                speed = 12;
                direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
            }
            break;
        
        case 3:
           with instance_create(0, room_height, o_hurt) {
                speed = 12;
                direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
            }
            break;
    }
    if sky < 3 && pulse = 1 {
        sky++;
    } else if pulse = 1 {
        sky = 0;
        dir = -dir;
    }
    pulse--;
}
/*while count != 0 {
    
}*/
