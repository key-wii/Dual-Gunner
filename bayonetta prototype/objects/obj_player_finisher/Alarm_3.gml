/// @description Take player input
var cooldown = 5;
switch (dir) {
	case L:
		if (keyboard_check_pressed(global.block)) {
			finisher_punch(direction, dir_face, hits);
			with (obj_finisher_prompt2) text = "E";
			dir = R;
			dir_face *= -1;
			hits++;
			alarm_set(3, cooldown);
			alarm_set(1, alarm_get(1) + 2);
			exit;
		}
		break;
	case R:
		if (keyboard_check_pressed(global.taunt)) {
			finisher_punch(direction, dir_face, hits);
			with (obj_finisher_prompt2) text = "Q";
			dir = L;
			dir_face *= -1;
			hits++;
			alarm_set(3, cooldown);
			alarm_set(1, alarm_get(1) + 2);
			exit;
		}
		break;
}
alarm_set(3, 1);