if head != 0 || unusable = false {
    //var i;
    //for (i=0; i<distance_to_point(head.x, head.y); i+=64) {
        draw_sprite_ext(sprite_index, 1, x, y-distance_to_point(head.x, head.y)/2-32-(MELODYCHASER.minibig/2), global.mini, distance_to_point(head.x, head.y)/64, 0, colour, image_alpha);
    //}
    
    
} else {
    draw_sprite_ext(sprite_index, 1, x, y-distance_to_point(x, 0)/2-32, global.mini, distance_to_point(x, 0)/64, 0, colour, image_alpha);
}
draw_self();

