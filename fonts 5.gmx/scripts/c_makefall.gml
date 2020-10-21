///c_makefall();
var i;
var j = 0;
repeat (30) {
    for (i=0; i<count; i++) {
        with instance_create((room_width*fall)+i*(16*((-(fall-.5)*2))), 0-j*16, o_hurt) {
            vspd = 60;
        }
        //console_log(i, fall, count);
    }
    j++;
}
