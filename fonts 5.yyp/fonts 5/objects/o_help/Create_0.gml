vspd = 0;
savedy = y;
going = false;
image_speed = 0;
switch global.songscript {
    case c_lancerraps:
        image_index = 0;
        break;
    case c_nightfalls:
        image_index = 1;
        break;
    case c_everythingwillfreeze:
        image_index = 1;
        break;
    case c_key:
        image_index = 3;
        break;
    
    default:
        instance_destroy();
        break;
}

