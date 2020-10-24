if inputgimmick = false {
    if arrayx[arraypos] = "T"  {
        if global.storymode = true {
            instance_create(640, bar+100, o_textbox);
        }
    }
    switch arrayx[arraypos] {
        case "STOP":
            o_note.count = -480;
            o_note.vspd = o_note.vspd*2;
            o_naturalend.count = -480;
            o_naturalend.vspd = o_naturalend.vspd*2;
            break;
    }
    console_log(arraypos);
    inputgimmick = true;
    arraypos++;
    
}
