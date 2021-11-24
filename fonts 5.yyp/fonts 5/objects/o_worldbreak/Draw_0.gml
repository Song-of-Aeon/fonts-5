draw_self();
if sprite_index = s_worldleft {
    draw_sprite_ext(s_worldleft, 0, x, y, image_xscale, image_yscale, 0, c_white, sidealpha);
} else {
    draw_sprite_ext(s_worldright, 0, x, y, image_xscale, image_yscale, 0, c_white, sidealpha);
}

