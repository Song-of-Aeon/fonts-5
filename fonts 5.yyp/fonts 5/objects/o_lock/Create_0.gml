attack = c_null;
count = 0;
countwo = 0;
pulse = false;
pulsetwo = false;
pulsaved = 4;
sky = true;
fall = false;
attacks = array(c_midsky, c_sweepingsky, c_cuttingsky, c_heartbeat, c_iyozane, c_borderofseaandsky, c_tokey, c_tosoul);
attack = 0;
dir = 1;
locked = true;
delay = 90;
image_alpha = 0;
if o_lock.attack != 6 {
    
}
if global.songscript != c_key {
    instance_destroy();
}

