image_alpha -= .05;
speed = speed/1.01;
image_angle += turner;
if image_alpha <= 0 {
    instance_destroy();
}

