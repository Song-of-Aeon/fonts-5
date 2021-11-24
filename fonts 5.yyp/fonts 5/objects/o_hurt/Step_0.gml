//image_angle += 6;
vspd += grav;
x += hspd;
y += vspd;

if y > room_height+sprite_height || x < -sprite_width || y < -1000 || x > room_height*2 {
    instance_destroy();
}

if o_lock.attack = 6 {
    image_alpha -= .05;
    if image_alpha <= 0 {
        instance_destroy();
    }
} else {
    image_alpha += .1;
}

