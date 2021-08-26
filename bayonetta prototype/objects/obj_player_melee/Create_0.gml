start_dir = direction;
chargeup = true;
alarm_set(5, 0);
dont_cancel = true;

melee_combo();
if (last_hit) alarm_set(5, meleeCharge / 4);

/*var temp = ds_list_create();
for (var i = 0; i < ds_list_size(combo_now); i++)
	temp[| i] = combo_now[| i];*/
	
//if (!check_combo(combo_now, combo1)) reset_combo();
if (just_reset) alarm_set(0, meleeCharge);
else alarm_set(0, meleeCharge / 6);
just_reset = false;

/*for (var i = 0; i < ds_list_size(temp); i++)
	combo_now[| i] = temp[| i];
ds_list_destroy(temp);*/

tick = -1;

hold = true;


audio_stop_sound(snd_chargeWave);