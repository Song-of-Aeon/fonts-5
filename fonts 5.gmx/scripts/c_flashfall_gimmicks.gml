if inputgimmick = false {
    if arrayx[arraypos] = "T"  {
        if global.storymode = true {
            instance_create(640, bar+100, o_textbox);
        }
    }
    switch arrayx[arraypos] {
        case "FALL":
            danmaku = 495;
            instance_create(lanedown+lanespacing/4+16, lanedown+lanespacing/4+16, o_flashfall);
            state = c_receptordanmaku;
            break;
        case "RISE":
            o_flashfall.fading = true;
            state = c_receptorinput;
            instance_destroy(o_sakuya);
            break;
    }
    console_log(arraypos);
    inputgimmick = true;
    arraypos++;
    
}
