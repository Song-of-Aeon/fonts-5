///x_sm_parser_create_old

script_execute(MELODYCHASER.songscript);

position = 0;
reader = "";
title = "";
bpm1 = "";
bpm2 = "";
mode = "metadata";
measure = 0;
measurelength = 0;
noteset[0] = "NOPE";
arraypos = 0;
xmod = MELODYCHASER.xmod;
notelist = "";
notecount = 0;
entermeasure = 0;
endmeasure = 0;
measuredifference = 0;
//noteset = array_create(20);

while position <= string_length(song) {
    if mode = "metadata" {
        reader = string_insert(string_char_at(song, position), reader, string_length(reader)+1);
        if string_char_at(song, position) = ";" || string_char_at(song, position) = "#" {
            reader = "";
        }
        switch reader {
            case "TITLE:":
                position++;
                while string_char_at(song, position) != ";" {
                    title = string_insert(string_char_at(song, position), title, string_length(title)+1);
                    position++;
                }
                reader = "";
                console_log(title);
                break;
            /*case "BPMS:":
                reader = string_insert(string_char_at(song, position), reader, string_length(reader)+1);
                while string_char_at(song, position) != "=" {
                    bpm1 = string_insert(string_char_at(song, position), bpm, string_length(bpm)+1);
                    position++;
                }
                while string_char_at(song, position) != ";" {
                    bpm2 = string_insert(string_char_at(song, position), bpm2, string_length(bpm2)+1)
                }
                bpm1 = real(bpm1);
                bpm2 = real(bpm2);
                reader = "";
                console_log("BPM1: " + bpm1 + "\n" + "BPM2: " + bpm2);
                break;*/
            case "NOTES:":
                mode = "nearnotes";
                break;
        }
        
    }
    
    if mode = "nearnotes" {
        /*if string_char_at(song, position) = string_digits(string_char_at(song, position)) {
            if string_char_at(song, position+1) = ":" {
                mode = "notes";
                position++;
            }
        }*/
        //position++;
        if string_copy(song, position, 7) = "measure" {
            mode = "notes";
        }
        
    }
    
    if mode = "notes" {
        if string_copy(song, position, 7) = "measure" {
            endmeasure = arraypos;
            var m;
            for (m=entermeasure; m<endmeasure; m++) {
                var measuredifference = string_copy(noteset[arraypos-1], 5, string_length(noteset[arraypos-1])-4);
                noteset[m] = string_copy(noteset[m], 0, 4) + measuredifference;
                //console_log(noteset[m]);
            }
            //console_log(noteset[arraypos-1]);
            measure += 1;
            measurelength = 0;
            position += 8 + string_length(string(measure));
            entermeasure = arraypos;
        }
        if string_digits(string_char_at(song, position)) = string_char_at(song, position) {
            measurelength += .25;
            noteset[arraypos] = string_copy(song, position, 4) + string(ceil(measurelength));// + "_" + string(audio_sound_length(MELODYCHASER.audio)/measure);
            
            //console_log(string(measurelength));
            //noteset[arraypos] = string_insert(string(ceil(measurelength)), noteset[arraypos], 5);
            //console_log(string_copy(song, position, 4));
            
            position += 4;
            arraypos++;
            
        }
        
    }
    
    
    position++;
}
/*for (i=0; i<array_length_1d(noteset); i++) {
    console_log(noteset[i]);
}*/

position = 0;
console_log(array_length_1d(noteset));

var i;
for (i=0; i<array_length_1d(noteset); i++) {
    notemaker[0] = real(string_char_at(noteset[i], 1));
    notemaker[1] = real(string_char_at(noteset[i], 2));
    notemaker[2] = real(string_char_at(noteset[i], 3));
    notemaker[3] = real(string_char_at(noteset[i], 4));
    notemaker[5] = real(string_copy(noteset[i], 5, string_length(noteset[i])-4));
    var j;
    for (j=0; j<=3; j++) {
        if notemaker[j] > 4 {
            notemaker[j] = 4;
        }
        switch notemaker[j] {
            case 0:
                notemaker[j] = object0;
                break;
            case 1:
                notemaker[j] = o_note;
                break;
            case 2:
                notemaker[j] = o_freeze;
                break;
            case 3:
                notemaker[j] = o_roll;
                break;
            case 4:
                notemaker[j] = o_freeze;
            
        }
        //console_log(notemaker[j]);
    }
    //console_log("make_real");
    //var measurelengthactive = noteset[5]
    /*with instance_create(64, i*(32/real(noteset[5]))*xmod+MELODYCHASER.bar, notemaker[0]) {
        dir = 0;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }
    with instance_create(128, i*(32/real(noteset[5]))*xmod+MELODYCHASER.bar, notemaker[1]) {
        dir = 1;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }
    with instance_create(192, i*(32/real(noteset[5]))*xmod+MELODYCHASER.bar, notemaker[2]) {
        dir = 2;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }
    with instance_create(256, i*(32/real(noteset[5]))*xmod+MELODYCHASER.bar, notemaker[3]) {
        dir = 3;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }*/
    with instance_create(64, i*(32/notemaker[5])*xmod+MELODYCHASER.bar, notemaker[0]) {
        dir = 0;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }
    with instance_create(128, i*(32/notemaker[5])*xmod+MELODYCHASER.bar, notemaker[1]) {
        dir = 1;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }
    with instance_create(192, i*(32/notemaker[5])*xmod+MELODYCHASER.bar, notemaker[2]) {
        dir = 2;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }
    with instance_create(256, i*(32/notemaker[5])*xmod+MELODYCHASER.bar, notemaker[3]) {
        dir = 3;
        vspd = -(other.bpm/c_bpmbuster())*other.xmod;
    }
}

/*var k;
for (k=0; k<array_length_1d(noteset); k++) {
    notelist = string_insert(noteset[k], notelist, k*4);
}
console_log(notelist);
var notelistlength = string_length(notelist);
var l;
for (l=0; k<=notelistlength; l++) {
    if string_char_at(notelist, l) = "0" {
        notelist = string_delete(notelist, 0, 1);
    }
}
console_log(notelist);
notecount = string_length(notelist);
console_log(notecount);*/

var n;
for (n=0;n<array_length_1d(noteset);n++) {
    console_log(noteset[n]);
}

MELODYCHASER.notecount = instance_number(o_note);
MELODYCHASER.notecount += instance_number(o_freeze);

