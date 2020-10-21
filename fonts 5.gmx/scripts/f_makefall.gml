///f_makefall(startposition, iterations);
var i;
for (i=0; i<count; i++) {
    with instance_create((room_width*fall)+i*(16*((-(fall-.5)*2))), 0, o_hurt) {
        vspd = 20;
    }
    console_log(i, fall, count);
}
