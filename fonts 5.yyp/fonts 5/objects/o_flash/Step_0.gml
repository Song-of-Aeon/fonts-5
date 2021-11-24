if global.cutscenecount = 5 {
    image_alpha += .05;
    depth = -2;
}
image_alpha -= .1;
if image_alpha <= 0 {
    instance_destroy();
}

