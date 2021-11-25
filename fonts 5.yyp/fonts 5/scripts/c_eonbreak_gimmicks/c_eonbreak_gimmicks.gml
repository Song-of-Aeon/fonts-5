function c_eonbreak_gimmicks() {
	if inputgimmick = false {
	    if arrayx[arraypos] = "C" {
	        with instance_create(0, 0, o_ChromaticAbberation) {
	            intensity = other.arrayy[other.arraypos];
	        }
	    } else if arrayx[arraypos] = "S" { //state
	        gimmickstate = arrayy[arraypos];
	        //absolute, velocity, reverse, or save
	    } else if arrayx[arraypos] = "B" {
	        windowBounceSpeed += arrayy[arraypos];
	        gimmickstate = 0;
	    } else if arrayx[arraypos] = "D" {
	        //instance_create(640, 360, o_doctor);
	    } else if arrayx[arraypos] = "T"  {
	        if global.storymode = true {
	            instance_create(640, bar+100, o_textbox);
	        }
	    } else {
	        switch gimmickstate {
	            case 0:
	                window_set_position(arrayx[arraypos], windowy);
	                whspd = 0;
	                wvspd = 0;
	                break;
	            case 1:
	                whspd = arrayx[arraypos];
	                wvspd = arrayy[arraypos];
	                break;
	            case 2:
	                whspd = arrayx[arraypos];
	                wvspd = arrayy[arraypos];
	                break;
	            case 3:
	                windowx = window_get_x();
	                windowy = window_get_y();
	                break;
	        }
	    }
	    inputgimmick = true;
	    arraypos++;
	}
	if gimmickstate = 2 {
	    windowx = windowxsaved;
	    windowy = windowysaved;
    
	}
	windowx += whspd;
	windowy += wvspd;
	whspd = whspd/1.025;
	wvspd = wvspd/1.025;

	if(display_get_width() <= breadx+window_get_width()){
	    windowBouncex = -1;
	}
	if(breadx <= 0){
	    windowBouncex = 1;
	}
	if(display_get_height() <= bready+window_get_height()){
	    windowBouncey = -1;
	}
	if(bready <= 0){
	    windowBouncey = 1;
	}
	breadx = window_get_x();
	bready = window_get_y();

	if windowBounceSpeed = 0 {
	    window_set_position(windowx, windowy);
	} else {
	    window_set_position(breadx+(windowBounceSpeed*windowBouncex),bready+(windowBounceSpeed*windowBouncey));
	}
	inputgimmick = true;



}
