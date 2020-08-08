global.controller = true;

gamepad_set_button_threshold(0, 0.1);
gamepad_set_axis_deadzone(0, 0.3);

var mainleft = -gamepad_axis_value(0, gp_axislh);
var maindown = gamepad_axis_value(0, gp_axislv);
var mainup = -gamepad_axis_value(0, gp_axislv);
var mainright = gamepad_axis_value(0, gp_axislh);

mainstick[0] = mainleft;
mainstick[1] = maindown;
mainstick[2] = mainup;
mainstick[3] = mainright;

var i;
for (i=0; i<array_length_1d(mainstick); i++) {
    if mainstick[i] > 0 {
        mainstickstate[i]++;
    } else {
        mainstickstate[i] = 0;
    }
    mainstickstate[i] = clamp(mainstickstate[i], 0, 2);
}

var cleft = -gamepad_axis_value(0, gp_axislh);
var cdown = gamepad_axis_value(0, gp_axislv);
var cup = -gamepad_axis_value(0, gp_axislv);
var cright = gamepad_axis_value(0, gp_axislh);

cstick[0] = cleft;
cstick[1] = cdown;
cstick[2] = cup;
cstick[3] = cright;

var i;
for (i=0; i<array_length_1d(cstick); i++) {
    if cstick[i] > 0 {
        cstickstate[i]++;
    } else {
        cstickstate[i] = 0;
    }
    cstickstate[i] = clamp(cstickstate[i], 0, 2);
}

/*var cleft = floor(gamepad_axis_value(0, gp_axisrh)+.05);
var cdown = floor(gamepad_axis_value(0, gp_axisrv)+.05);
var cup = ceil(gamepad_axis_value(0, gp_axisrv)-.05);
var cright = ceil(gamepad_axis_value(0, gp_axisrh)-.05);

var mainleft = 0;
var maindown = 0;
var mainup = 0;
var mainright = 0;

var cleft = 0;
var cdown = 0;
var cup = 0;
var cright = 0;*/

left += gamepad_button_check_pressed(0, gp_padl) + gamepad_button_check_pressed(0, gp_face3) + gamepad_button_check_pressed(0, gp_shoulderlb) + (mainstickstate[0])%2 + (cstickstate[0])%2;
down += gamepad_button_check_pressed(0, gp_padd) + gamepad_button_check_pressed(0, gp_face1) + gamepad_button_check_pressed(0, gp_shoulderl) + (mainstickstate[1])%2 + (cstickstate[1])%2;
up += gamepad_button_check_pressed(0, gp_padu) + gamepad_button_check_pressed(0, gp_face4) + gamepad_button_check_pressed(0, gp_shoulderr) + (mainstickstate[2])%2 + (cstickstate[2])%2;
right += gamepad_button_check_pressed(0, gp_padr) + gamepad_button_check_pressed(0, gp_face2) + gamepad_button_check_pressed(0, gp_shoulderrb) + (mainstickstate[3])%2 + (cstickstate[3])%2;

heldleft += gamepad_button_check(0, gp_padl) + gamepad_button_check(0, gp_face3) + gamepad_button_check(0, gp_shoulderlb) + floor(mainstickstate[0]/2) + floor(cstickstate[0]/2);
helddown += gamepad_button_check(0, gp_padd) + gamepad_button_check(0, gp_face1) + gamepad_button_check(0, gp_shoulderl) + floor(mainstickstate[1]/2) + floor(cstickstate[1]/2);
heldup += gamepad_button_check(0, gp_padu) + gamepad_button_check(0, gp_face4) + gamepad_button_check(0, gp_shoulderr) + floor(mainstickstate[2]/2) + floor(cstickstate[2]/2);
heldright += gamepad_button_check(0, gp_padr) + gamepad_button_check(0, gp_face2) + gamepad_button_check(0, gp_shoulderrb) + floor(mainstickstate[3]/2) + floor(cstickstate[3]/2);

select += gamepad_button_check_pressed(0, gp_start);
//back += gamepad_button_check_pressed();
swap += gamepad_button_check_pressed(0, gp_select);
