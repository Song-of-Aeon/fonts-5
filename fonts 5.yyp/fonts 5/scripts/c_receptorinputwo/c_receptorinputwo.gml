function c_receptorinputwo() {
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



}
