/// @description 
if (!instance_exists(owner)) exit;

draw_set_alpha(.6);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fnt_placeholder);
draw_set_color(c_white);

var xx = display_get_gui_width() * .3;
var space = 30;

draw_text(xx, space, "combo");
with (owner) {
	if (alarm_get(2) > 0 && alarm_get(2) < 12) draw_set_alpha(alarm_get(2) * .05);
	var size = ds_list_size(combo_now);
	for (var i = 0; i < size; i++)
		draw_text((xx - (size * 32) + 64 * i) + 32, space + 50, string(combo_now[| i]));
}
	
/*if (first_hit == L) draw_text(x, y - 60, "first strike: " + "L");
if (first_hit == R) draw_text(x, y - 60, "first strike: " + "R");
draw_text(x, y + 100, "bulls: " + string(bulls));*/

draw_set_alpha(1);