choosing = 0;
chooser = 0;
starting = 0;
savedpoint = 0;
choiceno = 0;
//global.hidden = true;
msgsprite = array_create(99);
msgspriteno = array_create(99);
choiceat[0] = "";
durability = 99;
durabilityset = 99;
txturn = 0;
txtalpha = .1;
fading = false;
switch global.songscript {
    case c_combattheme:
        txt_stage1();
        break;
    case c_lancerraps:
        txt_stage2();
        break;
    case c_nightfalls:
        txt_stage3();
        break;
    case c_everythingwillfreeze:
        txt_stage3();
        break;
    case c_nocturne:
        txt_stage4();
        break;
    case c_key:
        if global.megastream = false {
            txt_stage5b();
            global.megastream = true;
        } else {
            txt_stream();
        }
        break;
    case c_eonbreak:
        if global.megastream = false {
            txt_stage5();
            global.megastream = true;
        } else {
            txt_stream();
        }
        break;
    
}


