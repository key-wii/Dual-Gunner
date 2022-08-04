//Finisher cancels melee
//finisher();

//Hyper cancels melee
//hyper_check(true);

if (chargeup) direction -= 34 * dir_face;
/*if (just_meleed && tick == -1) direction -= 70 * dir_face;
else if (chargeup) direction -= (15 - alarm_get(0)) * dir_face;*/
else direction = (start_dir + 75 * dir_face) - (tick * dir_face);
if (tick >= 0) tick += 1;
image_angle = direction;

prev_ang = image_angle;

var atking = false;
with (obj_melee_e) if (owner == other.id) atking = true;
if (!chargeup && !atking) after_melee_e(obj_e_dpg);

if (hp > 0) exit;
death();