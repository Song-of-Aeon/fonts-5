/// @description c_receptorkey
function c_receptorkey() {
	switch o_lock.attack {
	    case 3:
	        f_danmakudetection(laneleft);
	        f_danmakudetection(lanedown);
	        f_danmakudetection(laneup);
	        f_danmakudetection(laneright);
	        break;
        
	    case 4:
	        if f_danmakudetection(laneleft) {
	            with instance_create(laneleft, bar, o_hurt) {
	                speed = 12;
	                direction = point_direction(x, y, o_dancer.x, o_dancer.y);
	            }
	        }
	        if f_danmakudetection(lanedown) {
	            with instance_create(lanedown, bar, o_hurt) {
	                speed = 12;
	                direction = point_direction(x, y, o_dancer.x, o_dancer.y);
	            }
	        }
	        if f_danmakudetection(laneup) {
	            with instance_create(laneup, bar, o_hurt) {
	                speed = 12;
	                direction = point_direction(x, y, o_dancer.x, o_dancer.y);
	            }
	        }
	        if f_danmakudetection(laneright) {
	            with instance_create(laneright, bar, o_hurt) {
	                speed = 12;
	                direction = point_direction(x, y, o_dancer.x, o_dancer.y);
	            }
	        }
	        break;
    
	    default:
	        if f_danmakudetection(laneleft) || f_danmakudetection(lanedown) || f_danmakudetection(laneup) || f_danmakudetection(laneright) {
	            o_lock.pulse = o_lock.pulsaved;
	            o_lock.pointx = o_dancer.x;
	            o_lock.pointy = o_dancer.y;
	        }
	        /*f_danmakudetection(laneleft);
	        f_danmakudetection(lanedown);
	        f_danmakudetection(laneup);
	        f_danmakudetection(laneright);*/
	        break;
    
	    /*case 0:
	        if f_danmakudetection(laneleft) {
            
	        }
	        if f_danmakudetection(lanedown) {
            
	        }
	        if f_danmakudetection(laneup) {
            
	        }
	        if f_danmakudetection(laneright) {
            
	        }
	        break;*/
	}



}
