
if keyboard_check_pressed(vk_space) {
    console_log("crash, bitch");
    
    global.notesteps = ds_list_create();
    global.notesteps2 = ds_list_create();
    global.zetsubou = ds_list_create();
    ds_list_read(global.notesteps, string(libsm__getNoteData("/songs/1monai/One More Night.sm", "dance-single", "Easy")));
    ds_list_read(global.notesteps2, string(libsm_getNoteData(sm_onemorenight, "dance-single", "Easy")));
    music = libsm__getMusic("/songs/1monai/One More Night.sm");
    bpm = libsm__getBPMs("/songs/1monai/One More Night.sm");
    song = libsm__getTitle("/songs/1monai/One More Night.sm", true);
    //bg = sprite_add("/songs/1monai/One More Night-bg.png", 1, false, false, 0, 0);
    //banner = sprite_add("/songs/1monai/One More Night-bn.png", 1, false, false, 0, 0);
    //bg = sprite_add(libsm__getBackground("/songs/1monai/One More Night.sm"), 1, false, false, 0, 0);
    //banner = sprite_add(libsm__getBanner("/songs/1monai/One More Night.sm"), 1, false, false, 0, 0);
    //libsm__get
    //"/songs/1monai/One More Night.sm"
    
    console_log(@"the thing i, kishibe rohan, like more than anything else...
    is finding people who think they're hot shit and saying no to their faces.");
    //console_log(libsm__getNoteData("/songs/1monai/One More Night.sm"));
    console_log("daga kotowaru");
    playing = true;
    var i;
    var j;
    for (i = 0; i < ds_list_size(global.notesteps); i++) {
        if global.notesteps[i] = 0000 {
            j++;
        } else {
            instance_create(x, y+i, o_note);
        }
        
    }
    console_log(libsm__getNoteData(working_directory+"/songs/1monai/One More Night.sm", "dance-single", "Easy"));
    console_log(libsm__getNoteData("", "", ""));
    console_log(libsm_getNoteData(sm_onemorenight, "dance-single", "Easy"));
    console_log(string(ds_list_find_value(global.notesteps, 19)));
    console_log(string(ds_list_find_value(global.notesteps2, 19)));
    console_log(string(ds_list_find_value(global.notesteps3, 19)));
    console_log(string(ds_list_find_value(global.zetsubou, 1)));
    if ds_list_empty(global.notesteps) {
        console_log("ns1out");
    }
    if ds_list_empty(global.notesteps2) {
        console_log("ns2out");
    }
    if ds_list_empty(global.notesteps3) {
        console_log("ns3out");
    }
    if ds_list_empty(global.zetsubou) {
        console_log("zetsuout");
    }
    sm_onemorenight();
    
}

if playing = true {
    
}

