sprite_index = s_soul;
count++;

if count >= 240 {
    x += hspd;
    y += vspd;
}

switch dir {
    case 0:
        image_angle = -90;
        break;
    case 1:
        image_angle = 0;
        break;
    case 2:
        image_angle = 180;
        break;
    case 3:
        image_angle = 90;
        break;
}




