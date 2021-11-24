if durability > 0 {
    message_draw = message[message_current];
} else if durability <= 0 {
    if (message_current < message_end) {
        message_current += 1;
        message_length = string_length(message[message_current]);
        characters = 0;
        message_draw = "";
        durability = durabilityset;
        txturn = 70;
        txtalpha = .1;
    } else { 
        //instance_destroy();
        //global.hidden = false;
        fading = true;
    }
}
if txturn != 0 {
    txturn = txturn/1.1;
    if txturn < 1 {
        txturn = 0;
    }
}
if txtalpha < 1 && !fading {
    txtalpha += .05;
}
if fading {
    durability = 0;
    txtalpha -= .02;
    if txtalpha <= 0 {
        instance_destroy();
    }
}

