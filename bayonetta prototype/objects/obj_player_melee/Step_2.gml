if (chargeup) direction -= 34 * dir_face;
/*if (just_meleed && tick == -1) direction -= 70 * dir_face;
else if (chargeup) direction -= (15 - alarm_get(0)) * dir_face;*/
else direction = (start_dir + 75 * dir_face) - (tick * dir_face);
if (tick >= 0) tick += 1;
image_angle = direction;

if (hp > 0) exit;
death();