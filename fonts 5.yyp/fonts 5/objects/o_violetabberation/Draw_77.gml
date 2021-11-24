if surface_exists(application_surface) {
    if window_get_fullscreen() {
        surface_resize(application_surface, display_get_width(), display_get_height());
    }
}
shader_set(z_violetabberation);
var unif = shader_get_uniform(z_violetabberation,"intensity");
//shader_set_uniform_f(unif,((current_time/1000%10)-5)/720);
shader_set_uniform_f(unif,intensity/720);
draw_surface(application_surface,0,0);
if intensity <= .2 {
    shader_reset();
}

