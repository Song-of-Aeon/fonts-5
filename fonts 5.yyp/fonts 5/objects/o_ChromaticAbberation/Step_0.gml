intensity -= .1;
if instance_exists(o_fao)
    intensity = 0;
if intensity <= 0 {
    instance_destroy();
}

