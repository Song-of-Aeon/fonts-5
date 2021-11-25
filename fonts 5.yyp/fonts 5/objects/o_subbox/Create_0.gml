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
txt = "";
txtwo = "";
subset = c_null;
time = -30;
tim = 0;
switch global.songscript {
    case c_reset_set:
        subset = st_reset_set;
        subsetwo = st_reset_set_jp;
        if !global.gimmickactive {
            instance_destroy();
        }
        break;
    case c_itsrainingsomewhereelse:
        subset = st_ending;
        subsetwo = c_null;
        break;
    case c_yumegaaru:
        subset = st_golden;
        subsetwo = c_null;
        break;
    default:
        subset = c_null;
        subsetwo = c_null;
        instance_destroy();
        break;
    
}
whatevertime = delta_time;
speaker = c_maroon;
draw_set_valign(fa_middle);


