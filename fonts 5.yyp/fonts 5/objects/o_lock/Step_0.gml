if locked {
    if image_alpha > 0
    image_alpha -= .05;
} else {
    if attack < 3 && image_alpha < 1 {
        image_alpha += .05;
    }
    if !delay {
        script_execute(attacks[attack]);
    } else {
        delay--;
    }
}
/*if keyboard_check_pressed(ord('L')) {
    pulsetwo = true;
}
countwo++;
if countwo % 36 = 0 {
    
    pulse = attack+1;
}*/

/* */
/*  */
