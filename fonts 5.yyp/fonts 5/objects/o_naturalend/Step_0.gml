sprite_index = s_null;
count += global.truetime;

if count >= 240 {
    x += hspd*global.truetime;
    y += vspd*global.truetime;
}


if y <= MELODYCHASER.bar {
    MELODYCHASER.countwo = 300;
    instance_destroy();
}

