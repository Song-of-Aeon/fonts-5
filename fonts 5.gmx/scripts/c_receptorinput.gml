if left {
    if instance_place(50, bar, o_note) != noone && instance_place(50, bar, o_note).dir = 0 {
        var distance = instance_place(50, bar, o_note).y - bar;
        noterank = floor(abs(distance)/16);
        if noterank < 4 {
            instance_destroy(instance_place(50, bar, o_note));
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
                realscore += .8*(100/notecount);
                break;
            case 3:
                with instance_create(x, y, o_hit) {
                    image_blend = c_blue;
                }
                break;
        }
    }
    bop[0] = .6;
}

if down {
    if instance_place(100, bar, o_note) != noone && instance_place(100, bar, o_note).dir = 1 {
        var distance = instance_place(100, bar, o_note).y - bar;
        noterank = floor(abs(distance)/16);
        if noterank < 4 {
            instance_destroy(instance_place(100, bar, o_note));
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
                realscore += .8*(100/notecount);
                break;
            case 3:
                with instance_create(x, y, o_hit) {
                    image_blend = c_blue;
                }
                break;
        }
    }
    bop[1] = .6;
}

if up {
    if instance_place(150, bar, o_note) != noone && instance_place(150, bar, o_note).dir = 2 {
        var distance = instance_place(150, bar, o_note).y - bar;
        noterank = floor(abs(distance)/16);
        if noterank < 4 {
            instance_destroy(instance_place(150, bar, o_note));
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
                realscore += .8*(100/notecount);
                break;
            case 3:
                with instance_create(x, y, o_hit) {
                    image_blend = c_blue;
                }
                break;
        }
    }
    bop[2] = .6;
}

if right {
    if instance_place(200, bar, o_note) != noone && instance_place(200, bar, o_note).dir = 3 {
        //if 
        var distance = instance_place(200, bar, o_note).y - bar;
        noterank = floor(abs(distance)/16);
        if noterank < 4 {
            instance_destroy(instance_place(200, bar, o_note));
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
                realscore += .8*(100/notecount);
                break;
            case 3:
                with instance_create(x, y, o_hit) {
                    image_blend = c_blue;
                }
                break;
        }
    }
    bop[3] = .6;
}
