///f_hitdetection(lane x, note direction, fx angle);

if instance_place(argument0, bar, o_note) != noone && instance_place(argument0, bar, o_note).dir = argument1 {
    var distance = instance_place(argument0, bar, o_note).y - bar;
    if instance_place(argument0, bar, o_note).object_index = o_mine {
        noterank = 4;
        instance_destroy(instance_place(argument0, bar, o_mine));
    } else {
        noterank = floor(abs(distance)/16);
    }
    if noterank < 4 {
        if instance_place(argument0, bar, o_note).object_index = o_freeze || instance_place(argument0, bar, o_note).object_index = o_roll {
            with instance_create(argument0, bar, o_stay) {
                tail = instance_place(argument0, MELODYCHASER.bar, o_note).tail;
                image_blend = instance_place(argument0, MELODYCHASER.bar, o_note).image_blend;
                image_angle = instance_place(argument0, MELODYCHASER.bar, o_note).image_angle;
                with tail {
                    head = other.id;
                }
            }
        }
        instance_destroy(instance_place(argument0, bar, o_note));
        combo++;
    } else {
        combo = 0;
    }
    switch noterank {
        case 0:
            with instance_create(x, y, o_hit) {
                image_blend = c_teal;
            }
            realscore += 100/notecount;
            break;
        case 1:
            with instance_create(x, y, o_hit) {
                image_blend = c_yellow;
            }
            realscore += .8*(100/notecount);
            break;
        case 2:
            with instance_create(x, y, o_hit) {
                image_blend = c_green;
            }
            realscore += .6*(100/notecount);
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
            break;
    }
    var fx = instance_create(argument0, bar, o_hitfx);
    fx.image_angle = argument2;
}
