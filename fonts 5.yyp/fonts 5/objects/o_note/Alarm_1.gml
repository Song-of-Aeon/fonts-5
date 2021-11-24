/*if collision_line(MELODYCHASER.laneleft, y+32*global.xmod, MELODYCHASER.laneright, y+32*global.xmod, o_note, false, true) != noone {
    stringto = collision_line(MELODYCHASER.laneleft, y+32*global.xmod, MELODYCHASER.laneright, y+32*global.xmod, o_note, false, true);
}*/
if collision_line(MELODYCHASER.laneleft, y+8*global.xmod, MELODYCHASER.laneright, y+8*global.xmod, o_note, false, true) != noone && global.streamstring = true {
    stringto = collision_line(MELODYCHASER.laneleft, y+8*global.xmod, MELODYCHASER.laneright, y+8*global.xmod, o_note, false, true);
}
switch dir {
        case 0:
            image_angle = -90;
            break;
        case 1:
            image_angle = 0;
            break;
        case 2:
            image_angle = 180;
            break;
        case 3:
            image_angle = 90;
            break;
    }
savedx = x;
savedy = y;

/* */
/*  */
