image_alpha -= .08;
if image_alpha <= 0 {
    instance_destroy();
}
sprite_index = global.effect;
image_xscale = global.mini;
image_yscale = global.mini;

