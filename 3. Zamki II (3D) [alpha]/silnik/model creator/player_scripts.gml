#define player2_create
global.model_player2 = d3d_model_create();
d3d_model_load(global.model_player2,'player2.gmmod');

#define player2_draw
texture_set_interpolation(1);
texture_set_repeat(0);
draw_set_color(c_white);
d3d_model_draw(global.model_player2,argument0,argument1,argument2,background_get_texture(bg_tex_player2));

