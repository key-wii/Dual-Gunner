if (just_meleed) sprite_index = spr_player_meleeing;
else if (sprite_index != spriteHurt) sprite_index = sprite_default;
draw_self();

if (hand >= 0) {
	draw_sprite_ext(spr_hand, hand, x + hx, y + hy, 4, 4 * h_face, dir_orig + hdir, c_white, 1);
}

draw_body();
//event_inherited();