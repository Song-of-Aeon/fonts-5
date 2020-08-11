///c_receptordanmaku
switch danmaku {
    case 1:
        if f_danmakudetection(laneleft) {
            with instance_create(laneleft, bar, o_knife) {
                direction = point_direction(x, y, o_soul.x, o_soul.y);
                speed = 10;
                image_angle = direction - 90;
            }
        }
        
        if f_danmakudetection(lanedown) {
            var i;
            for (i=0; i<=3; i++) {
                var newbullet = instance_create(lanedown, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x+(((i-1.5)*80)%90), o_soul.y);
                newbullet.speed = 6+i/3;
            }
        }
        if f_danmakudetection(laneup) {
            var j;
            for (j=0; j<=3; j++) {
                var newbullet = instance_create(laneup, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x+(((j-1.5)*80)%90), o_soul.y);
                newbullet.speed = 6+j/3;
            
            }
        }
        
        if f_danmakudetection(laneright) {
            with instance_create(laneright, bar, o_knife) {
                direction = point_direction(x, y, o_soul.x, o_soul.y);
                speed = 10;
                image_angle = direction - 90;
            }
        }
        break;
    case 2:
        if f_danmakudetection(laneleft) {
            var i;
            for (i=0; i<=4; i++) {
                var newbullet = instance_create(laneleft, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x-4+i*2, o_soul.y-4+i*2);
                newbullet.speed = 6;
            }
        }    
    
        if f_danmakudetection(lanedown) {
            downwave = -(irandom(1) + 1);
        }
        if f_danmakudetection(laneup) {
            upwave = irandom(1) + 1;
        }
        
        if downwave < 0 {
            with instance_create(lanedown, bar, o_bulwave) {
                direction = other.downwave*35-50 +(random(60)-30);
                speed = 5;
            }
            downwave++;        
        }
        if upwave > 0 {
            with instance_create(laneup, bar, o_bulwave) {
                direction = other.upwave*35-130 +(random(60)-30);
                speed = 5;
            }
            upwave--;
    
        }
        
        if f_danmakudetection(laneright) {
            var i;
            for (i=0; i<=4; i++) {
                var newbullet = instance_create(laneright, bar, o_bullet);
                newbullet.direction = point_direction(newbullet.x, newbullet.y, o_soul.x-4+i*2, o_soul.y-4+i*2);
                newbullet.speed = 6;
            }
        }  
        break;
    
    
    case 3:
        if !instance_exists(o_sakuya) {
            with instance_create(lanedown+lanespacing/4, bar+100, o_sakuya) {
                spellcard = "Temporal Mark [Melody Chaser]";
            }
        }
        if f_danmakudetection(laneleft) {
            with o_projectile {
                speed = 200;
            }
        }
        
        if f_danmakudetection(lanedown) {
            with o_projectile {
                speed = 200;
            }
        }
        if f_danmakudetection(laneup) {
            with o_projectile {
                speed = 200;
            }
        }
        
        if f_danmakudetection(laneright) {
            with o_projectile {
                speed = 200;
            }
        }
        break;
    
    
    case 4:
        if !instance_exists(o_sakuya) {
            with instance_create(lanedown+lanespacing/4, bar+100, o_sakuya) {
                spellcard = "Pointed Moment [Guignol's Grace]";
            }
        }
        
        if f_danmakudetection(laneleft) {
            with instance_create(laneleft, bar, o_bounceknife) {
                hspd = -random(4);
                vspd = 4;
            }
        }
        
        if f_danmakudetection(lanedown) {
            with instance_create(lanedown, bar, o_bounceknife) {
                hspd = -random(2);
                vspd = 6;
            }
        }
        if f_danmakudetection(laneup) {
            with instance_create(laneup, bar, o_bounceknife) {
                hspd = random(2);
                vspd = 6;
            }
        }
        
        if f_danmakudetection(laneright) {
            with instance_create(laneright, bar, o_bounceknife) {
                hspd = random(4);
                vspd = 4;
            }
        }
        break;
    
    default:
        if f_danmakudetection(laneleft) {
            
        }
        if f_danmakudetection(lanedown) {
            
        }
        if f_danmakudetection(laneup) {
            
        }
        if f_danmakudetection(laneright) {
            
        }
        break;
}



