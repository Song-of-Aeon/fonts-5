if durability > 0 {
    durability -= 1/60;
    txtalpha += .1;
} else if durability <= 0 {
    //txturn = 70;
    txtalpha -= .1;
}
if txturn != 0 {
    txturn = txturn/1.1;
    if txturn < 1 {
        txturn = 0;
    }
}
if fading {
    durability = 0;
    txtalpha -= .02;
    if txtalpha <= 0 {
        instance_destroy();
    }
}
txtalpha = clamp(txtalpha, 0, 1);
time += 1*global.truetime;
tim = floor(time/60); //gaming gaming gamigng agimgnga gmgingamga gagimgagmagmkgagmamgmmamggimgiangngiagiamgingiangaingaingignaigm
subset();
subsetwo();
//console_log("yeahhh");

