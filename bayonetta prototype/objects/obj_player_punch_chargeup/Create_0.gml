start_dir = direction;
alarm_set(5, 0);
dont_cancel = true;

if (last_hit) alarm_set(5, 1);

/*var temp = ds_list_create();
for (var i = 0; i < ds_list_size(combo_now); i++)
	temp[| i] = combo_now[| i];*/
	
//if (!check_combo(combo_now, combo1)) reset_combo();
alarm_set(0, meleeCharge * 3);

/*for (var i = 0; i < ds_list_size(temp); i++)
	combo_now[| i] = temp[| i];
ds_list_destroy(temp);*/

hold = true;

with (move) { 
	dashing = false;
	topSpeed = .1;
	burstSpeed = .1;
}

audio_stop_sound(snd_chargeWave);