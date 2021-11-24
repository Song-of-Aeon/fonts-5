function c_borderofseaandsky() {
	//if pulse {
	    with instance_create(room_width/2, 96, o_hurt) {
	        direction = sin(other.count/100)*360+45;
	        speed = 8;
	    }
	    with instance_create(room_width/2, -64, o_hurt) {
	        direction = sin(other.count/150)*360-135;
	        speed = 8;
	    }
	    //pulse--;
	//}
	count++;
	/*while count != 0 {
    
	}*/



}
