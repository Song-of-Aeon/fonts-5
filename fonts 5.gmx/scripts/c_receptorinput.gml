if left {
    f_hitdetection(laneleft, 0, -90);
    bop[0] = .8;
    
}
if down {
    f_hitdetection(lanedown, 1, 0);
    bop[1] = .8;
    
}
if up {
    f_hitdetection(laneup, 2, 180);
    bop[2] = .8;
    
}
if right {
    f_hitdetection(laneright, 3, 90);
    bop[3] = .8;
    
}


if instance_place(laneleft, bar, o_switch) != noone {
    danmaku++;
    instance_create(160, 0, o_soul);
    state = c_receptordanmaku;
}

