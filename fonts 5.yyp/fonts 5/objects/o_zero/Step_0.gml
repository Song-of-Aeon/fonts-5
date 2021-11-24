if count <= 10 {
    image_alpha += .1;
} else if count = 11 {
    image_speed = .2;
}
if image_index >= 30 {
    image_speed = 0;
    image_alpha -= .1;
    if image_alpha <= -1 {
        instance_destroy();
    }
}
count++;

