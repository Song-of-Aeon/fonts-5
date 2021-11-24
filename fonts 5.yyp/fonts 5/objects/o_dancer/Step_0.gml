c_input();
c_redinput();
jump = select + up;
warp = swap;
hput = right - left;
if locked {
    if image_alpha > 0
    image_alpha -= .05;
} else {
    script_execute(state);
    if image_alpha < 1
    image_alpha += .05;
}

