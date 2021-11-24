image_alpha -= .1;
if image_alpha <= 0 {
    instance_destroy();
}
sprite_index = global.effect;
image_xscale = 1;
image_yscale = 1;

