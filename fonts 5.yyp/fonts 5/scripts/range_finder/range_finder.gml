/// @description  range_finder(x,y,dir,range,object,prec,notme)
/// @param x
/// @param y
/// @param dir
/// @param range
/// @param object
/// @param prec
/// @param notme
function range_finder(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	//
	//  Returns the exact distance to the nearest instance of an object in a
	//  given direction from a given point, or noone if no instance is found.
	//  The solution is found in log2(rng) collision checks.
	//
	//      x,y         position in room, real
	//      dir         direction to look in degrees, real
	//      rng       the greatest distance to look in pixels, real
	//      object      which objects to look for (or all), real
	//      prec        true to use precise collision checking, bool
	//      notme       true to ignore the calling instance, bool
	//
	/// GMLscripts.com/license

	//90 up 180 left 270 down
	{
	    var ox,oy,dir,rng,object,prec,notme,dx,dy,sx,sy,distance;
	    ox = argument0;
	    oy = argument1;
	    dir = argument2;
	    rng = argument3;
	    object = argument4;
	    prec = argument5;
	    notme = argument6;
	    sx = lengthdir_x(rng,dir);
	    sy = lengthdir_y(rng,dir);
	    dx = ox + sx;
	    dy = oy + sy;
	    if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
	        distance = -1;
	    }else{
	        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
	            sx /= 2;
	            sy /= 2;
	            if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
	                dx += sx;
	                dy += sy;
	            }else{
	                dx -= sx;
	                dy -= sy;
	            }
	        }
	        distance = point_distance(ox,oy,dx,dy);
	    }
	    return distance;
	}



}
