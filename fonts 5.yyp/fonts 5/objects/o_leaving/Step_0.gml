countwo += .2;
if countwo >= 1 {
    image_alpha = count/100;
    count -= 1;
    if count <= 0 {
        instance_destroy();
    }
} else {
    image_alpha = countwo;
}

