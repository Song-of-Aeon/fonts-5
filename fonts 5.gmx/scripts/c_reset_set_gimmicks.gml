if inputgimmick = false {
        if arrayx[arraypos] = "T"  {
            if global.storymode = true {
                instance_create(640, bar+100, o_textbox);
            }
        }
        switch arrayx[arraypos] {
            case "darken": //vignette
                o_vignette.image_alpha += .17;
                break;
            case "not darken":
                o_vignette.fading = true;
                break;
            case "SET": //chokepoint
                chokepoint = 650;
                break;
            case "SE":
                chokepoint -= 20+global.difficulty*10;
                break;
            case "RESET":
                chokepoint = 2000;
                break;
            case "IDEAL": //ideal judgement
                depth = -5;
                allideal = true;
                break;
            case "NOT IDEAL":
                depth = 0;
                allideal = false;
                break;
            case "CHANGE": //notes spin
                noteturn = true;
                break;
            case "NOT CHANGE":
                noteturn = false;
                break;
            case "ACKNOWLEDGED": //note burst
                noteburst = true;
                break;
            case "NOT ACKNOWLEDGED":
                noteburst = false;
                break;
            case "LIKED": //approach circles
                osumode = true;
                break;
            case "NOT LIKED":
                osumode = false;
                break;
            case "GOOD": //
                global.hidden = true;
                break;
            case "NOT GOOD":
                global.hidden = false;
                break;
            case "PRAISED": //
                global.kaguya = true;
                break;
            case "NOT PRAISED":
                global.kaguya = false;
                break;
            case "AI": //
                global.notecover = s_heart;
                break;
            case "AI JANAI":
                global.notecover = s_kaguya;
                break;
            case "KAWARU":
                noteturn = true;
                notechange = true;
                break;
            case "KAWARANAI":
                noteturn = false;
                notechange = false;
                break;
            /*case "": //
                 = true;
                break;
            case "NOT ":
                 = false;
                break;
            */
        }
        console_log(arraypos);
        inputgimmick = true;
        arraypos++;
    }
    if !instance_exists(o_vignette) {
        instance_create(0, 0, o_vignette);
    }
