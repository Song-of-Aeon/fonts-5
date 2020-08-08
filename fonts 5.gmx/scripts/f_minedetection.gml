///f_hitdetection(lane x, note direction, fx angle);
var nonsense = argument1;
//if instance_place(argument0, bar, o_note) != noone && instance_place(argument0, bar, o_note).dir = argument1 {
var thenote = collision_point(argument0, bar, o_mine, false, true);
if thenote != noone {
    infoalpha += .2;
    infoalpha = clamp(infoalpha, 1.6, 4);
    var distance = abs(thenote.y - bar);

    noterank = 4;
    ranktext = noterank;
    instance_destroy(thenote);
    combocolour[3] = combocolour[2];
    combocolour[2] = combocolour[1];
    combocolour[1] = combocolour[0];
    with instance_create(x, y, o_hit) {
        image_blend = c_red;
    }
    realscore -= 100/notecount;
    comborank = 0;
    hp -= 1;
    combocolour[0] = c_red;
    if instance_exists(o_textbox) {
        o_textbox.durability--;
    }
    bop[8] = 1.3;
    var fx = instance_create(argument0, bar, o_hitfx);
    fx.image_angle = argument2;
}
