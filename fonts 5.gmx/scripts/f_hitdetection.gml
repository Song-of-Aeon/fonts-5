///f_hitdetection(lane x, note direction, fx angle);
var nonsense = argument1;
//if instance_place(argument0, bar, o_note) != noone && instance_place(argument0, bar, o_note).dir = argument1 {
if collision_line_first(argument0, bar-bpm*xmod/20, argument0, bar+bpm*xmod/20, o_note, false, true) != noone {
    thenote = collision_line_first(argument0, bar-bpm*xmod/20, argument0, bar+bpm*xmod/20, o_note, false, true);
    var distance = abs(thenote.y - bar);

    if thenote.object_index = o_mine {
        noterank = 4;
        instance_destroy(instance_place(argument0, bar, o_mine));
    } else {
        noterank = floor(distance/((bpm*xmod)/50));
        ranktext = noterank;
    }
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
    if noterank < 3 {
        instance_destroy(thenote);
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
            hp += .08;
            break;
        case -2:
            with instance_create(x, y, o_hit) {
                image_blend = c_green;
            }
            realscore += .6*(100/notecount);
            hp += .06;
            break;
        case -3:
            with instance_create(x, y, o_hit) {
                image_blend = c_blue;
            }
            break;
        case 0:
            with instance_create(x, y, o_hit) {
                image_blend = c_teal;
            }
            realscore += 100/notecount;
            hp += .1;
            break;
        case 1:
            with instance_create(x, y, o_hit) {
                image_blend = c_yellow;
            }
            realscore += .8*(100/notecount);
            hp += .08;
            break;
        case 2:
            with instance_create(x, y, o_hit) {
                image_blend = c_green;
            }
            realscore += .6*(100/notecount);
            hp += .06;
            break;
        case 3:
            with instance_create(x, y, o_hit) {
                image_blend = c_blue;
            }
            break;
        case 4:
            with instance_create(x, y, o_hit) {
                image_blend = c_red;
            }
            realscore -= 100/notecount;
            hp -= 1;
            break;
    }
    bop[8] = 1.3;
    var fx = instance_create(argument0, bar, o_hitfx);
    fx.image_angle = argument2;
}
