///c_receptordanmaku
switch danmaku {
case 1:
if instance_place(64, bar, o_note) != noone {
    instance_destroy(instance_place(64, bar, o_note));
    with instance_create(64, bar, o_knife) {
        direction = point_direction(x, y, o_soul.x, o_soul.y);
        speed = 10;
        image_angle = direction - 90;
    }
}

if instance_place(128, bar, o_note) != noone {
    instance_destroy(instance_place(128, bar, o_note));
    var i;
    for (i=0; i<=3; i++) {
        var newbullet = instance_create(128, bar, o_bullet);
        newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x+(((i-1.5)*60)%90), o_soul.y);
        newbullet.speed = 6+i/3;
    }
}
if instance_place(192, bar, o_note) != noone {
    instance_destroy(instance_place(192, bar, o_note));
    var j;
    for (j=0; j<=3; j++) {
        var newbullet = instance_create(192, bar, o_bullet);
        newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x+(((j-1.5)*60)%90), o_soul.y);
        newbullet.speed = 6+j/3;
    
    }
}

if instance_place(256, bar, o_note) != noone {
    instance_destroy(instance_place(256, bar, o_note));
    with instance_create(256, bar, o_knife) {
        direction = point_direction(x, y, o_soul.x, o_soul.y);
        speed = 10;
        image_angle = direction - 90;
    }
}
break;
case 2:

break;
case 3:

break;
}
