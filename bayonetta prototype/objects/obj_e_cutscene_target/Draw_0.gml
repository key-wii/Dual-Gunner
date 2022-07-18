/// @description "Target" text & Circle
draw_self();

if (prevObject == obj_e_gov) {
	draw_set_font(fnt_controls);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	//draw_text(x, y - sprite_height * 1.2, "Target");
	draw_text_ext_transformed(x - textScale * 20, y - sprite_height * 1.3 - (textScale - 1) * 30, "Target", 1, 9999, textScale, textScale, 0);
	draw_text_ext_transformed(x + textScale2 * 20, y + sprite_height * 1.3 + (textScale2 - 1) * 30, "Target", 1, 9999, textScale2, textScale2, 180);
	draw_text_ext_transformed(x - sprite_height * 1.3 - (textScale2 - 1) * 30, y + textScale2 * 20, "Target", 1, 9999, textScale2, textScale2, 90);
	draw_text_ext_transformed(x + sprite_height * 1.3 + (textScale - 1) * 30, y - textScale * 20, "Target", 1, 9999, textScale, textScale, 270);
	draw_circle(x, y, sprite_width * .73, true);
	draw_circle(x, y, sprite_width * .74, true);
	draw_circle(x, y, sprite_width * .75, true);
	draw_circle(x, y, sprite_width * .76, true);
	draw_circle(x, y, sprite_width * .77, true);
	draw_set_color(c_white);
}