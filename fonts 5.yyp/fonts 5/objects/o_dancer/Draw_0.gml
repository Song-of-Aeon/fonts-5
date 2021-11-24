draw_set_alpha(image_alpha);
if warping {
    //(x, y, warpx, warpy, 5);
    draw_sprite(s_warp, warply, warpx, warpy);
}
draw_self();
draw_set_alpha(1);

