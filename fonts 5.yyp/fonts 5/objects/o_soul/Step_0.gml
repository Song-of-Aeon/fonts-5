c_redinput();
if !fading {
    script_execute(state);
} else {
    image_alpha -= .1;
    if image_alpha <= 0 {
        instance_destroy();
    }
}

/*if inv {
    countwo++;
    if countwo >= 62 {
        alarm[1] = 1;
        countwo = 0;
    }
}*/
if image_xscale > 1 {
    image_xscale = image_xscale/1.01;
    image_yscale = image_yscale/1.01;
} else {
    image_xscale = 1;
    image_yscale = 1;
}

/* */
/*  */
