///c_receptordanmaku
switch danmaku {
    case 1:
        if instance_place(laneleft, bar-64, o_note) != noone {
            instance_destroy(instance_place(64, bar, o_note));
            with instance_create(64, bar, o_knife) {
                direction = point_direction(x, y, o_soul.x, o_soul.y);
                speed = 10;
                image_angle = direction - 90;
            }
        }
        
        if instance_place(lanedown, bar-64, o_note) != noone {
            instance_destroy(instance_place(lanedown, bar, o_note));
            var i;
            for (i=0; i<=3; i++) {
                var newbullet = instance_create(lanedown, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x+(((i-1.5)*60)%90), o_soul.y);
                newbullet.speed = 6+i/3;
            }
        }
        if instance_place(laneup, bar-64, o_note) != noone {
            instance_destroy(instance_place(laneup, bar, o_note));
            var j;
            for (j=0; j<=3; j++) {
                var newbullet = instance_create(laneup, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x+(((j-1.5)*60)%90), o_soul.y);
                newbullet.speed = 6+j/3;
            
            }
        }
        
        if instance_place(laneright, bar-64, o_note) != noone {
            instance_destroy(instance_place(laneright, bar, o_note));
            with instance_create(256, bar, o_knife) {
                direction = point_direction(x, y, o_soul.x, o_soul.y);
                speed = 10;
                image_angle = direction - 90;
            }
        }
        break;
    case 2:
        if instance_place(laneleft, bar-64, o_note) != noone {
            instance_destroy(instance_place(laneleft, bar, o_note));
            var i;
            for (i=0; i<=4; i++) {
                var newbullet = instance_create(laneleft, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x-4+i*2, o_soul.y-4+i*2);
                newbullet.speed = 6;
            }
        }    
    
    
        if instance_place(laneup, bar-64, o_note) != noone {
            instance_destroy(instance_place(laneup, bar, o_note));
            upwave = irandom(1) + 1;
        }
        if instance_place(lanedown, bar-64, o_note) != noone {
            instance_destroy(instance_place(lanedown, bar, o_note));
            downwave = irandom(1) + 1;
        }
        if upwave > 0 {
            with instance_create(laneup, bar, o_bulwave) {
                direction = other.upwave*35-130 +(random(60)-30);
                speed = 5;
            }
            upwave--;
    
        }
        if downwave < 0 {
            with instance_create(lanedown, bar, o_bulwave) {
                direction = other.downwave*35-50 +(random(60)-30);
                speed = 5;
            }
            downwave++;        
        }
        
        if instance_place(laneright, bar-64, o_note) != noone {
            instance_destroy(instance_place(laneright, bar, o_note));
            var i;
            for (i=0; i<=4; i++) {
                var newbullet = instance_create(laneright, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x-4+i*2, o_soul.y-4+i*2);
                newbullet.speed = 6;
            }
        }  
        break;
    case 3:
        
        break;
}

if instance_place(laneleft, bar, o_switchback) != noone {
    instance_destroy(o_soul);
    state = c_receptorinput;
}

