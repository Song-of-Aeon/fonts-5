//lifted straight from firegame if this has major problems i die boy i die

if hput != 0 {
    hspd += hput * acc;
    hspd = clamp(hspd, -maxhspd, maxhspd);
} else {
    hspd = lerp(hspd, 0, frict);
}

if(abs(hspd) < 0.2 and !aerial){
    hspd = 0;
}

if place_meeting(x + hspd, y, o_solid) {
    var i = 0;
    while !place_meeting(x + sign(hspd), y, o_solid) {
        x += sign(hspd);
        i++;
        if i > sprite_width { break; }
    }
    hspd = 0;
}


if vspd < 0 {
    if (jumprel) {
        vspd = vspd / 2;
    }
}



if !place_meeting(x, y + 1, o_solid) {
    vspd += grav;
    leniance -= .5;
    //aerial = true;
    if vspd > 3 { //this so there can be different sprites for falling speeds its from firegame we probably dont want it here but leaving it in case
        image_index = 2;
    } else if vspd > 0 {
        image_index = 1;
        acc = .5;
    } else {
        image_index = 0;
        acc = .5;
    }
} else {
    leniance = 5;
    acc = 1.2;
    aerial = false; 
    dashed = false;
    //y = floor(y);
    vspd = 0;
    if down {
        hspd = 0;
    }
    dashed = false;
}

if place_meeting(x, y + vspd, o_solid) {
    while !place_meeting(x, y + sign(vspd), o_solid) {
        y += sign(vspd);
    }
    vspd = 0;
    
}




if leniance > 0 {
    if (jump) {
        vspd = jspd;
        leniance = 0;
        aerial = true;
    }
}


image_speed = hspd/20;
if (right) {
    dir = 0;
    image_xscale = 1;    
} else if (left) {
    dir = 2;
    image_xscale = -1;
}
if aerial = true {
    //sprite_index = s_air;
}

if (((!left and !right)or hspd == 0 ) and !aerial) {
    //sprite_index = s_neutral;
} else if !aerial {
    //sprite_index = s_walk;
}

if warp {
    warpx = x;
    warpy = y;
    warping = true;
}
if warprel {
    x = warpx;
    y = warpy;
    warping = false;
}

x += hspd;
y += vspd;


/*if instance_place(x, y, o_damage) && !inv {
    alarm[0] = 30;
    inv = true;
    image_alpha = .5;
    MELODYCHASER.hp--;
    MELODYCHASER.realscore--;
}*/
