if going {
    y = savedy;
    y += vspd;
    vspd = vspd/1.05;
    if y - sprite_height/2 >= room_height {
        instance_destroy();
    }
}

