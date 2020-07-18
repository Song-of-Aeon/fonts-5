if left {
    f_hitdetection(laneleftwo, 0, -90);
    bop[4] = .8;
    
}
if down {
    f_hitdetection(lanedowntwo, 1, 0);
    bop[5] = .8;
    
}
if up {
    f_hitdetection(laneuptwo, 2, 180);
    bop[6] = .8;
    
}
if right {
    f_hitdetection(lanerightwo, 3, 90);
    bop[7] = .8;
    
}


if instance_place(laneleft, bar, o_switch) != noone {
    danmaku++;
    instance_create(160, 0, o_soul);
    state = c_receptordanmaku;
}

