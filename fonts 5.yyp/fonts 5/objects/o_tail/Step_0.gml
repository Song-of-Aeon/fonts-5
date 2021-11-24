if !instance_exists(head) {
    instance_destroy();
}



count += global.truetime;
if count >= 240 {
    y += vspd*global.truetime;
}

if y < 720 + sprite_height/2 {
    x += hspd*global.truetime;
    /*if head.object_index = o_roll {
        image_blend = c_purple;
        colour = c_purple;
    }*/
}

if unusable = false {
    //image_alpha = head.image_alpha;
    if y <= MELODYCHASER.bar-64 || y <= head.y+32 {
        with head {
            instance_destroy();
        }
        MELODYCHASER.realscore += .2*(100/MELODYCHASER.notecount);
        instance_destroy();
    }
} else if y <= 0 {
    instance_destroy();
}
image_index = 2;

/* */
/*  */
