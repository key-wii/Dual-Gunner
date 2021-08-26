if (just_meleed) sprite_index = spr_player_meleeing;
else if (sprite_index != spriteHurt) sprite_index = sprite_default;
draw_self();

event_inherited();