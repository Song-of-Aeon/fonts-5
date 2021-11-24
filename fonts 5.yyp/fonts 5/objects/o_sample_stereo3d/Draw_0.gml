/// @description Apply the shader effect and draw self

_move += 5;

shader_set(z_stereo3d);
_disp = shader_get_uniform(z_stereo3d, "displacement");
shader_set_uniform_f(_disp, 0.003);
draw_background_tiled(bk_nebula, 0, _move);
shader_reset();


shader_set(z_stereo3d);
_disp = shader_get_uniform(z_stereo3d, "displacement");
shader_set_uniform_f(_disp, -0.003);
draw_self();
shader_reset();


