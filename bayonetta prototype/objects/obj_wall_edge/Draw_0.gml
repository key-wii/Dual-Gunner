/// @description Draw outline
draw_set_alpha(.005);
draw_rectangle(x, y, x + sprite_width - 1, y + sprite_height - 1, false);
draw_set_alpha(1);