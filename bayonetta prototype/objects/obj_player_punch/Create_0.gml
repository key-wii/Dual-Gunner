var dir = start_dir;
//point_mouse();
direction = dir + 80 * dir_face;
image_angle = direction;

melee_combo();
alarm_set(5, 0);
if (last_hit) alarm_set(5, 1);

/*var temp = ds_list_create();
for (var i = 0; i < ds_list_size(combo_now); i++)
	temp[| i] = combo_now[| i];*/
	
//if (!check_combo(combo_now, combo1)) reset_combo();
alarm_set(0, 2);

combo_length = ds_list_size(combo_now);

/*for (var i = 0; i < ds_list_size(temp); i++)
	combo_now[| i] = temp[| i];
ds_list_destroy(temp);*/

audio_stop_sound(snd_chargeWave);