shader_set(z_ChromaticAbberation);
var unif = shader_get_uniform(z_ChromaticAbberation,"intensity");
//shader_set_uniform_f(unif,((current_time/1000%10)-5)/720);
shader_set_uniform_f(unif,intensity/720);
draw_surface(application_surface,0,0);
if intensity <= .2 {
    shader_reset();
}

