
    x += hspd;
    y += vspd;


if (x < MELODYCHASER.laneleft - MELODYCHASER.lanespacing/2 || x > MELODYCHASER.laneright + MELODYCHASER.lanespacing/2) && !bounced {
    direction = point_direction(x, y, o_soul.x, o_soul.y);
    speed = vspd+hspd/2;
    hspd = 0;
    vspd = 0;
    bounced = true;
    with instance_create(x, y, o_bulfall) {
        vspd = random(5)-3;
        hspd = random(3)-1.5;
    }
}
image_angle = point_direction(x, y, xprevious, yprevious)+90;
if bounced {
    image_angle = direction-90;
}

