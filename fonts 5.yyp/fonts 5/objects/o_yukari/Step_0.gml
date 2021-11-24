image_xscale = image_xscale*1.2;
image_xscale = clamp(image_xscale, -3, 3);
switch spellcard {
    case "Border of Directed and Wandering":
        count++;
        if count >= 60 {
            var dink = random(10);
            repeat(36) {
                var dinker = instance_create(x, y, o_kunai);
                dinker.speed = 4;
                dinker.direction = dink;
                dink += 10;
            }
            count = 1;
        }
        break;
    
    case "Spellcard Founder [Dodging Rain, Light, and Cherry Blossoms]":
        count++;
        if count >= 30 {
            instance_create(x+random(MELODYCHASER.lanespacing*2)-MELODYCHASER.lanespacing, y+random(sprite_height)-sprite_height/2, o_bulbomb);
            count = 0;
        }
        break;
}

