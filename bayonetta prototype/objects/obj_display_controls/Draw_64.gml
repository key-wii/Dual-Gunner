/// @description 
event_inherited();

if (!ready_text) {
	alarm_set(1, 2);
	exit;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_controls);
var s = 20;
draw_text_color(space + s * 3, space + s * 1.5, strControls,
c_lime, c_lime, c_lime, c_lime, image_alpha);