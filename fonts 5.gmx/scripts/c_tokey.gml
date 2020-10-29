//if pulse {
    with instance_create(room_width/2, 96, o_hurt) {
        direction = sin(other.count/100)*360+45;
        speed = 12;
    }
    with instance_create(room_width/2, -64, o_hurt) {
        direction = sin(other.count/150)*360-135;
        speed = 16;
    }
    with instance_create(0, 0, o_hurt) {
         speed = 12;
         direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
    }
    
    with instance_create(room_width, 0, o_hurt) {
         speed = 12;
         direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
    }
    with instance_create(room_width, room_height, o_hurt) {
         speed = 12;
         direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
    }
    with instance_create(0, room_height, o_hurt) {
         speed = 12;
         direction = point_direction(x, y, other.pointx+(other.pulse*10)*other.dir, other.pointy+(other.pulse*10)*other.dir); //30
    }
    //pulse--;
//}
count++;
/*while count != 0 {
    
}*/
