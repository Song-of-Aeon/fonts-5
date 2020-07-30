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

if heldleft {
    f_minedetection(laneleft, 0, -90);
    
}
if helddown {
    f_minedetection(lanedown, 1, 0);
    
}
if heldup {
    f_minedetection(laneup, 2, 180);
    
}
if right {
    f_minedetection(laneright, 3, 90);
    
}


/*if heldleft {
    if range(bar) bar-bpm*global.xmod/20
}*/
