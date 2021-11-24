hspd = 0;
vspd = 0;
dir = 0;
if global.red != s_sun {
    image_speed = MELODYCHASER.bpm/1125;
} else {
    image_speed = 0;
    image_index = irandom(2)
}
tail = noone;
count = 0;
alarm[0] = 5-irandom(4);
fading = false;
tookdir = false;
stringto = noone;
alarm[1] = 1;
bitch = 0;
savedx = x;
savedy = y;

