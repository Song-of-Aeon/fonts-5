if o_menu.selectoronsong {
    switch o_menu.menuposition {
        case 0:
            if global.noteoverride = 0 {
                sprite_index = s_nullnote;
                sprite_index2 = s_nullnote;
            }
            bpm = 180;
            break;
        case 1:
            if global.noteoverride = 0 {
                sprite_index = s_red;
                sprite_index2 = s_blue;
            }
            bpm = 180;
            break;
        case 2:
            if global.noteoverride = 0 {
                sprite_index = s_aka;
                sprite_index2 = s_ao;
            }
            bpm = 170;
            break;
        case 3:
            if global.noteoverride = 0 {
                sprite_index = s_dark;
                sprite_index2 = s_darker;
            }
            if global.difficulty = 1 {
                bpm = 240;
            } else {
                bpm = 182;
            }
            break;
        case 4:
            if global.noteoverride = 0 {
                sprite_index = s_sun;
                sprite_index2 = s_sea;
            }
            bpm = 196;
            //vspd = -(196/c_bpmbuster()); //155.005 for drivin
            break;
        case 5:
            if global.noteoverride = 0 {
                sprite_index = s_trueblue;
                sprite_index2 = s_ultramarine;
            }
            if global.difficulty = 1 {
                bpm = 180;
            } else {
                bpm = 118;
            }
            break;
        case 6:
            if global.noteoverride = 0 {
                sprite_index = s_rojo;
                sprite_index2 = s_azul;
            }
            bpm = 270;
            break;
        
    }
    
}
if global.mmod != 0 {
    c_mmod(bpm);
} else {
    xmod = global.xmod;
}
vspd = -(bpm/c_bpmbuster());


image_speed = bpm/1125;
switch global.noteoverride {
    case 1:
        sprite_index = s_red;
        sprite_index2 = s_blue;
        break;
    case 2:
        sprite_index = s_aka;
        sprite_index2 = s_ao;
        break;
    case 3:
        sprite_index = s_dark;
        sprite_index2 = s_darker;
        break;
    case 4:
        sprite_index = s_sun;
        sprite_index2 = s_sea;
        break;
    case 5:
        sprite_index = s_trueblue;
        sprite_index2 = s_ultramarine;
        break;
    
}
if sprite_index = s_sun {
    image_speed = 0;
}

if global.difficulty = 0 {
    sprite_index2 = s_null;
}

if image_angle = 0 || image_angle = 90 {
    sprite_index = sprite_index2;
}

if y <= 252 {
    if sprite_index != s_null {
        with instance_create(x, y, o_pseudohitfx) {
            image_angle = other.image_angle;
        }
    }
    y += 468;
}

y += (vspd*xmod)/1.5;

