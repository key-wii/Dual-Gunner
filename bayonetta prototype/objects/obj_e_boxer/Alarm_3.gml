/// @description Attack Picker
var ran = irandom(1);

if (ran == 0 && instance_exists(armL)) {
	dir_attack = LEFT;
	attack_arm = armL;
	other_arm = armR;
}
else if (instance_exists(armR)) {
	dir_attack = RIGHT;
	attack_arm = armR;
	other_arm = armL;
} else {
	dir_attack = LEFT;
	attack_arm = armL;
	other_arm = armR;
}

alarm_set(0, 1);