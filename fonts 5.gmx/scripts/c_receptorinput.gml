if left {
    if instance_place(64, bar, o_note) != noone && instance_place(64, bar, o_note).dir = 0 {
        var distance = instance_place(64, bar, o_note).y - bar;
        if instance_place(64, bar, o_note).object_index = o_mine {
            noterank = 4;
            instance_destroy(instance_place(64, bar, o_mine));
        } else {
            noterank = floor(abs(distance)/16);
        }
        if noterank < 4 {
            if instance_place(64, bar, o_note).object_index = o_freeze || instance_place(64, bar, o_note).object_index = o_roll {
                with instance_create(64, bar, o_stay) {
                    tail = instance_place(64, MELODYCHASER.bar, o_note).tail;
                    image_blend = instance_place(64, MELODYCHASER.bar, o_note).image_blend;
                    image_angle = instance_place(64, MELODYCHASER.bar, o_note).image_angle;
                    with tail {
                        head = other.id;
                    }
                }
            }
            instance_destroy(instance_place(64, bar, o_note));
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
        with instance_create(64, bar, o_hitfx) {
            image_angle = -90;
        }
    }
    bop[0] = .8;
    
}

if down {
    if instance_place(128, bar, o_note) != noone && instance_place(128, bar, o_note).dir = 1 {
        var distance = instance_place(128, bar, o_note).y - bar;
        if instance_place(128, bar, o_note).object_index = o_mine {
            noterank = 4;
            instance_destroy(instance_place(128, bar, o_mine));
        } else {
            noterank = floor(abs(distance)/16);
        }
        if noterank < 4 {
            if instance_place(128, bar, o_note).object_index = o_freeze || instance_place(128, bar, o_note).object_index = o_roll {
                with instance_create(128, bar, o_stay) {
                    tail = instance_place(128, MELODYCHASER.bar, o_note).tail;
                    image_blend = instance_place(128, MELODYCHASER.bar, o_note).image_blend;
                    image_angle = instance_place(128, MELODYCHASER.bar, o_note).image_angle;
                    with tail {
                        head = other.id;
                    }
                }
            }
            instance_destroy(instance_place(128, bar, o_note));
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
        with instance_create(128, bar, o_hitfx) {
            image_angle = 0;
        }
    }
    bop[1] = .8;
}

if up {
    if instance_place(192, bar, o_note) != noone && instance_place(192, bar, o_note).dir = 2 {
        var distance = instance_place(192, bar, o_note).y - bar;
        if instance_place(192, bar, o_note).object_index = o_mine {
            noterank = 4;
            instance_destroy(instance_place(192, bar, o_mine));
        } else {
            noterank = floor(abs(distance)/16);
        }
        if noterank < 4 {
            if instance_place(192, bar, o_note).object_index = o_freeze || instance_place(192, bar, o_note).object_index = o_roll {
                with instance_create(192, bar, o_stay) {
                    tail = instance_place(192, MELODYCHASER.bar, o_note).tail;
                    image_blend = instance_place(192, MELODYCHASER.bar, o_note).image_blend;
                    image_angle = instance_place(192, MELODYCHASER.bar, o_note).image_angle;
                    with tail {
                        head = other.id;
                    }
                }
            }
            instance_destroy(instance_place(192, bar, o_note));
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
        with instance_create(192, bar, o_hitfx) {
            image_angle = 180;
        }
    }
    bop[2] = .8;
}

if right {
    if instance_place(256, bar, o_note) != noone && instance_place(256, bar, o_note).dir = 3 {
        //if 
        var distance = instance_place(256, bar, o_note).y - bar;
        if instance_place(256, bar, o_note).object_index = o_mine {
            noterank = 4;
            instance_destroy(instance_place(256, bar, o_mine));
        } else {
            noterank = floor(abs(distance)/16);
        }
        if noterank < 4 {
            if instance_place(256, bar, o_note).object_index = o_freeze || instance_place(256, bar, o_note).object_index = o_roll {
                with instance_create(256, bar, o_stay) {
                    tail = instance_place(256, MELODYCHASER.bar, o_note).tail;
                    image_blend = instance_place(256, MELODYCHASER.bar, o_note).image_blend;
                    image_angle = instance_place(256, MELODYCHASER.bar, o_note).image_angle;
                    with tail {
                        head = other.id;
                    }
                }
            }
            instance_destroy(instance_place(256, bar, o_note));
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
        with instance_create(256, bar, o_hitfx) {
            image_angle = 90;
        }
    }
    bop[3] = .8;
}
