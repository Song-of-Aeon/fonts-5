image_alpha += .1;
image_xscale -= .05;
image_yscale -= .05;
if image_xscale <= 1 {
    repeat(5) {
        with instance_create(x, y, o_bulfall) {
            vspd = random(5)-3;
            hspd = random(3)-1.5;
        }
    }
    instance_destroy();
}

