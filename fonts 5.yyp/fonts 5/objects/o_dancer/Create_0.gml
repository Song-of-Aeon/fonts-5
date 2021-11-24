count = 0;
aerial = false;
hspd = 0;
vspd = 0;
jspd = -8;
acc = 1;
frict = .2;
hput = 0;
vput = 0;
state = c_dancer;
grav = .34;
leniance = 5;
maxhspd = 7.5;
maxvspd = 5;
time = 0;
inv = false;
warping = false;
warpx = x;
warpy = y;
locked = true;
warply = 0;
image_alpha = 0;
if global.songscript != c_key {
    instance_destroy();
}
hit = 0;

