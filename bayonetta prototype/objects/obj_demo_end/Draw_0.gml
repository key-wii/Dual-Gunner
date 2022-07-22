/// @description Draw end message
if (!displayText) exit;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_placeholder);
draw_set_color(c_lime);
var xx = display_get_gui_width() * .5;
var yy = display_get_gui_height() * .5;
draw_text(xx, yy, "End of the Demo!");
draw_set_color(c_white);