/// @description Take player input
var cooldown = 5;
switch (dir) {
	case L:
		if (finisherPunchLInput_pressed) {
			if (alarm_get(1) <= 20 && hits >= hitGoal) {
				finisher_punch_last(direction, dir_face, hits);
			} else {
				finisher_punch(direction, dir_face, hits);
				alarm_set(3, cooldown);
			}
			with (obj_finisher_prompt2) text = "E";
			dir = R;
			dir_face *= -1;
			hits++;
			if (first_hit) {
				if (alarm_get(1) > 1) alarm_set(1, timerMax);
				first_hit = false;
			} else alarm_set(1, alarm_get(1) + 2);
			exit;
		}
		break;
	case R:
		if (finisherPunchRInput_pressed) {
			if (alarm_get(1) <= 20 && hits >= hitGoal) {
				finisher_punch_last(direction, dir_face, hits);
			} else {
				finisher_punch(direction, dir_face, hits);
				alarm_set(3, cooldown);
			}
			with (obj_finisher_prompt2) text = "Q";
			dir = L;
			dir_face *= -1;
			hits++;
			if (first_hit) {
				if (alarm_get(1) > 1) alarm_set(1, timerMax);
				first_hit = false;
			} else alarm_set(1, alarm_get(1) + 2);
			exit;
		}
		break;
}
alarm_set(3, 1);