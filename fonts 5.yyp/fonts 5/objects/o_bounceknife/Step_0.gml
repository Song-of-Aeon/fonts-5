if !place_meeting(x, y, o_privatesquare) {
    x += hspd;
    y += vspd;
} else {
    x += hspd/2;
    y += vspd/2;
}
image_angle = point_direction(x, y, xprevious, yprevious)+90;

if x < MELODYCHASER.laneleft - MELODYCHASER.lanespacing/2 || x > MELODYCHASER.laneright + MELODYCHASER.lanespacing/2 {
    hspd = -hspd;
}

