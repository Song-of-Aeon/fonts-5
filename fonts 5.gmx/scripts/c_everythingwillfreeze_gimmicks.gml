if inputgimmick = false {
    if arrayx[arraypos] = "T"  {
        if global.storymode = true {
            instance_create(630, bar+100, o_textbox);
        }
    }
    switch arrayx[arraypos] {
        case "SOUL":
            danmaku++;
            instance_create(550, lanedown+lanespacing/4, o_soul);
            state = c_receptordanmaku;
            break;
        case "UNSOUL":
            o_soul.fading = true;
            state = c_receptorinput;
            break;
    }
    console_log(arraypos);
    inputgimmick = true;
    arraypos++;
    
}
