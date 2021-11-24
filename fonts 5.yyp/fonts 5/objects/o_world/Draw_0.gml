if drawer > 0 {
    //draw_sprite_ext(s_world, 1, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
    draw_sprite_ext(s_glow, glowcount%180, x, y, 1.5, 1.5, 0, c_white, image_alpha);
}
if drawer > 1 {
    //draw_sprite_ext(s_world, 1, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
    draw_sprite_ext(s_glow, glowcount%180, x, y, 1.5, 1.5, 0, c_white, image_alpha);
    //draw_sprite_ext(s_world, 2, x, y-360, image_xscale, image_yscale, 0, c_white, image_alpha);
    draw_sprite_ext(s_heaven, 0, 0, 0, 4, 4, 0, c_white, image_alpha);
}
draw_self();

