///f_hitdetection(lane x, note direction, fx angle);
var nonsense = argument1;
//if instance_place(argument0, bar, o_note) != noone && instance_place(argument0, bar, o_note).dir = argument1 {
var thenoteup = collision_line_first(argument0, bar, argument0, bar-bpm*global.xmod/20, o_note, false, true);
var thenotedown = collision_line_first(argument0, bar, argument0, bar+bpm*global.xmod/20, o_note, false, true);
if thenoteup != noone && thenotedown != noone {
    if abs(thenoteup.x-bar) < abs(thenotedown.x-bar) {
        thenote = thenoteup;
    } else {
        thenote = thenotedown;
    }
} else if thenoteup != noone {
    thenote = thenoteup;
} else if thenotedown != noone {
    thenote = thenotedown;
} else {
    thenote = noone;
}
if thenote != noone {
    
    var distance = abs(thenote.y - bar);

    if thenote.object_index = o_mine {
        noterank = 4;
        instance_destroy(instance_place(argument0, bar, o_mine));
    } else {
        noterank = floor(distance/((bpm*global.xmod)/50));
        ranktext = noterank;
        if thenote.object_index = o_freeze || thenote.object_index = o_roll {
            with instance_create(argument0, bar, o_stay) {
                tail = other.thenote.tail;
                image_blend = other.thenote.image_blend;
                image_angle = other.thenote.image_angle;
                with tail {
                    head = other.id;
                }
            }
        }
    }
    instance_destroy(thenote);
    if noterank < 3 {
        combo++;
    } else {
        combo = 0;
    }
    switch noterank {
        case -1:
            with instance_create(x, y, o_hit) {
                image_blend = c_yellow;
            }
            realscore += .8*(100/notecount);
            if comborank > 2
                comborank = 2;
            hp += .16;
            break;
        case -2:
            with instance_create(x, y, o_hit) {
                image_blend = c_green;
            }
            realscore += .6*(100/notecount);
            if comborank > 1
                comborank = 1;
            hp += .12;
            break;
        case -3:
            with instance_create(x, y, o_hit) {
                image_blend = c_blue;
            }
            comborank = 0;
            break;
        case 0:
            with instance_create(x, y, o_hit) {
                image_blend = c_teal;
            }
            realscore += 100/notecount;
            hp += .2;
            break;
        case 1:
            with instance_create(x, y, o_hit) {
                image_blend = c_yellow;
            }
            realscore += .8*(100/notecount);
            if comborank > 2
                comborank = 2;
            hp += .08;
            break;
        case 2:
            with instance_create(x, y, o_hit) {
                image_blend = c_green;
            }
            realscore += .6*(100/notecount);
            if comborank > 1
                comborank = 1;
            hp += .06;
            break;
        case 3:
            with instance_create(x, y, o_hit) {
                image_blend = c_blue;
            }
            comborank = 0;
            break;
        case 4:
            with instance_create(x, y, o_hit) {
                image_blend = c_red;
            }
            realscore -= 100/notecount;
            comborank = 0;
            hp -= 1;
            break;
    }
    bop[8] = 1.3;
    var fx = instance_create(argument0, bar, o_hitfx);
    fx.image_angle = argument2;
}
