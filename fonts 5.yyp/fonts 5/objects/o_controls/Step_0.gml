c_input();

if room = stagemenu {
    if select || back {
        savedy = room_height + sprite_height/2 + 5;
        vspd = y-savedy;
        going = true;
    }
    if control {
        savedy = room_height/2;
        vspd = y-savedy;
        going = false;
    }
} else {
    savedy = room_height + sprite_height/2 + 5;
}
//if going {
    y = savedy;
    y += vspd;
    vspd = vspd/1.05;
//}
x = 640;

