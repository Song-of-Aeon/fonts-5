//sprite_index = s_kaguya;
if global.songscript = c_key && global.gimmickactive && !funky {
    sprite_index = s_bar;
    x = room_width/2;
} else {
    sprite_index = s_null;
}
count += global.truetime;

if count >= 240 {
   // x += hspd*global.truetime;
    y += vspd*global.truetime;
    //console_log(vspd);
}


if y <= MELODYCHASER.bar {
    MELODYCHASER.inputgimmick = false;
    instance_destroy();
}

