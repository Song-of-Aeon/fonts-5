///c_soul


if (shift) {
    maxhspd = 2.2;
    maxvspd = 2.2;
} else {
    maxhspd = 4.6;
    maxvspd = 4.6;
}

var hput = (right) - (left)

if hput != 0 {
    hspd += hput*acc;
    hspd = clamp(hspd, -maxhspd, maxhspd);
} else {
    hspd = 0;
}



var vput = (down) - (up)

if vput != 0 {
    vspd += vput*acc;
    vspd = clamp(vspd, -maxvspd, maxvspd);
} else {
    vspd = lerp(vspd, 0, frict);
    vspd = 0;
}

y += vspd;
x += hspd;

if x < MELODYCHASER.laneleft-32 {
    x -= hspd;
}
if x > MELODYCHASER.laneright+32 {
    x -= hspd;
}

if y < MELODYCHASER.bar-32 {
    y -= vspd;
}
if y > view_wview[0] {
    y -= vspd;
}
    
if (right) {
    dir = 0;
}

if (left) {
    dir = 2;
}

if (down) {
    dir = 3;
}

if (up) {
    dir = 1;
}

if collision_line(x, y, xprevious, yprevious, o_projectile, false, false) && inv = false {
    inv = true;
    image_alpha = .5;
    alarm[1] = 60;
    MELODYCHASER.hp -= 1;
}


