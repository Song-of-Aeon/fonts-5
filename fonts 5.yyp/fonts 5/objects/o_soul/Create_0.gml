c_redinput();
inv = false;
state = c_soul;
spd = 5;
hspd = 0;
vspd = 0;
frict = 10;
display_reset(0, true);
count = 0;
acc = 9;
bam = false;
countwo = 0;
fading = false;
image_xscale = 3;
image_yscale = 3;


//tempsurface = surface_create(max(view_wview[0],1),max(view_hview[0],1));
tempsurface = -1;
image_speed = .1;
alarm[5] = 5;

//instance_create(x,y,o_graze);
state();
hit = 0;

