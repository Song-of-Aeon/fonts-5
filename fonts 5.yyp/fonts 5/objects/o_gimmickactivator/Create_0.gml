hspd = 0;
vspd = 0;
dir = 0;
count = 0;
if global.gimmickactive = false {instance_destroy()}; //what awful ways there are to do if statements
//console_log(script_get_name(global.songscript));
funky = false;
if instance_number(o_gimmickactivator) = 1 {
    funky = true;
}

