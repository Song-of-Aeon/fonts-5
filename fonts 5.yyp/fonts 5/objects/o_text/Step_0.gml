if image_xscale > 1 {
    image_xscale -= .1;
    image_angle += turning;
}
if image_yscale > 1 {
    image_yscale -= .1;
}
if image_xscale = 1.1 {
    if sprite_index = s_ephemerality {
        audio_play_sound(se_bam, 0, false);
    } else { 
        audio_play_sound(se_bang, 0, false);
    }
}

