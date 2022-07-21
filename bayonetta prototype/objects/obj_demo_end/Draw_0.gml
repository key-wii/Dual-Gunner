/// @description Draw "Inventory" text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_placeholder);
draw_set_color(c_lime);
var xx = display_get_gui_width() * .5;
var yy = display_get_gui_height() * .45;
draw_text(xx, yy, "The End");
yy = display_get_gui_height() * .55;
draw_text(xx, yy, "Thank you for playing this demo");
draw_set_color(c_white);