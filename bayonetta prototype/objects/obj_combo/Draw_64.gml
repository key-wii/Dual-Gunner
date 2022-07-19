/// @description 
if (!global.drawUI || !instance_exists(owner)) exit;

draw_set_alpha(.6);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fnt_placeholder);
draw_set_color(c_white);

var xx = display_get_gui_width() * .85;
var space = 30;

draw_text(xx, space, "combo");
with (owner) {
	if (alarm_get(2) > 0 && alarm_get(2) < 12) draw_set_alpha(alarm_get(2) * .05);
	var size = ds_list_size(combo_now);
	for (var i = 0; i < size; i++) {
		var dir_atk = string(first_hit);
		if (first_hit == L) dir_atk = "L";
		else if (first_hit == R) dir_atk = "R";
		
		if (combo_now[| i] == 2) {
			if (dir_atk == "R") dir_atk = "L";
			else if (dir_atk == "L") dir_atk = "R";
		}
		draw_text((xx - (size * 32) + 64 * i) + 32, space + 50, dir_atk);
	}
}
	
/*if (first_hit == L) draw_text(x, y - 60, "first strike: " + "L");
if (first_hit == R) draw_text(x, y - 60, "first strike: " + "R");
draw_text(x, y + 100, "bulls: " + string(bulls));*/

draw_set_alpha(1);