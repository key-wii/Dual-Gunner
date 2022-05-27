/// @description 
image_xscale = 1;
image_yscale = 1;

layer = layer_get_id("Above");
up = true;
wait = 0;

with (obj_player_move) topSpeed *= 1.25;
//with (obj_player_move) topSpeed /= 2;

sound_machine(snd_jump);