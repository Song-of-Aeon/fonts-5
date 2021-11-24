image_angle = direction-90;

speed = speed/1.05;

if speed <= .5 {
    image_yscale -= .1;
    if image_yscale <= 0 {
        with instance_create(x, y, o_knife) {
            direction = -90;
            speed = 6;
        }
        instance_destroy();
    }
}


