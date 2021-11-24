count += global.truetime;

if count >= 240 {
    y += vspd*global.truetime;
}


if y < 720 + sprite_height/2 {
    x += hspd*global.truetime;
    if MELODYCHASER.audio != m_everythingwillfreeze {
        image_angle += MELODYCHASER.bpm/40;
    }
    if y <= MELODYCHASER.bar && !tookdur {
        if instance_exists(o_textbox) {
            o_textbox.durability--;
        }
        tookdur = true;
    }
}

