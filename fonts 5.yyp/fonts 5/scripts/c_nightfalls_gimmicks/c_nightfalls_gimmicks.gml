function c_nightfalls_gimmicks() {
	if inputgimmick = false {
	    if global.scuffer && arrayx[arraypos] = "SPEED" {
	        o_note.vspd = o_note.vspd*arrayy[arraypos];
	        o_tail.vspd = o_tail.vspd*arrayy[arraypos];
	        o_gimmickactivator.vspd = o_gimmickactivator.vspd*arrayy[arraypos];
	        o_naturalend.vspd = o_naturalend.vspd*arrayy[arraypos];
	    } else if !global.scuffer {
	        if arrayx[arraypos] = "T"  {
	            if global.storymode = true {
	                instance_create(640, bar+100, o_textbox);
	            }
	        }
	        switch arrayx[arraypos] {
	            case "SOUL":
	                danmaku++;
	                instance_create(550, lanedown+lanespacing/4+16, o_soul);
	                state = c_receptordanmaku;
	                break;
	            case "UNSOUL":
	                o_soul.fading = true;
	                state = c_receptorinput;
	                instance_destroy(o_yukari);
	                break;
	            case "SPEED":
	                o_note.vspd = o_note.vspd*arrayy[arraypos];
	                o_tail.vspd = o_tail.vspd*arrayy[arraypos];
	                o_gimmickactivator.vspd = o_gimmickactivator.vspd*arrayy[arraypos];
	                o_naturalend.vspd = o_naturalend.vspd*arrayy[arraypos];
	                break;
	            case "DIVIDE":
	                with instance_create(0, 0, o_violetabberation) {
	                    intensity = other.arrayy[other.arraypos];
	                }
	                break;
	        }
	    }
	    inputgimmick = true;
	    arraypos++;
    
	}



}
