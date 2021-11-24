function c_iyozane() {
	/*if pulse {
	    with instance_create(room_width/2, 100, o_hurt) {
	        speed = 12;
	        direction = point_direction(x, y, o_dancer.x, o_dancer.y);
	    }
	    pulse = false;
	}*/

	with instance_create(sin(count/50)*225+320, 100, o_hurt) {
	    grav = .2;
	    vspd = -2;
	}
	//with instance_create(tan(count/50)*225+225+room_width/2, 100, o_hurt) {
	with instance_create(sin(-count/50)*225+320+room_width/2, 100, o_hurt) {
	    grav = .2;
	    vspd = -2;
	}
	count++;
	/*while count != 0 {
    
	}*/



}
