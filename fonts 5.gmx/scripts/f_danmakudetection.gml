///f_danmakudetection(lane x);
if collision_point(argument0, bar, o_note, false, false) != noone {
    thenote = collision_point(argument0, bar, o_note, false, false);
    if thenote.object_index = o_freeze || thenote.object_index = o_roll {
        with instance_create(argument0, bar, o_stay) {
            tail = other.thenote.tail;
            image_blend = other.thenote.image_blend;
            image_angle = other.thenote.image_angle;
            sprite_index = other.thenote.sprite_index;
            with tail {
                head = other.id;
            }
        }
    }
    instance_destroy(thenote);
    if instance_exists (o_soul) {
        realscore += (100/notecount)/(o_soul.hit/4+1);
    } else if instance_exists(o_dancer) {
        realscore += (100/notecount)/(o_dancer.hit/4+1);
    } else {
        realscore += 100/notecount;
    }
    return true;
} else {
    return false;
}
