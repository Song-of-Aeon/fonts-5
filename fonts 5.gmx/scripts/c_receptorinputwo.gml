if left {
    f_hitdetection(laneleft+lanespacing*3, 0, -90);
    bop[4] = .8;
    
}
if down {
    f_hitdetection(lanedown+lanespacing*3, 1, 0);
    bop[5] = .8;
    
}
if up {
    f_hitdetection(laneup+lanespacing*3, 2, 180);
    bop[6] = .8;
    
}
if right {
    f_hitdetection(laneright+lanespacing*3, 3, 90);
    bop[7] = .8;
    
}


if instance_place(laneleft, bar, o_switch) != noone {
    danmaku++;
    instance_create(160, 0, o_soul);
    state = c_receptordanmaku;
}

