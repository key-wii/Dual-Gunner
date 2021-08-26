start_dir = direction;
chargeup = true;
if (ds_list_size(combo_now) == 0) alarm_set(0, meleeCharge);
else alarm_set(0, meleeCharge / 4);

tick = -1;

hold = true;


audio_stop_sound(snd_chargeWave);