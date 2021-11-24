if rotation = true {
    image_angle += 1;
}
if rotation = false {
    if count = 30 {
        rotation = true;
        instance_create(0, 0, o_flash);
    }
}
if global.cutscenecount = 5 {
    if count = 30 {
        drawer = 1;
        instance_create(0, 0, o_flash);
    }
}
if global.cutscenecount = 6 {
    if count = 30 {
        drawer = 2;
        instance_create(0, 0, o_flash);
    }
}
image_alpha += .1;
count++;

