charging = false;
chargeMax = 45;
chargeMin = 5;
charge = chargeMax;
attacking = false;

trap = instance_create_layer(x, y, "Floor", obj_boxer_trap);
armL = instance_create_layer(x, y, "Enemy", obj_boxer_arm);
armR = instance_create_layer(x, y, "Enemy", obj_boxer_arm);
var scale = 3;
var master = id;
with (armL) {
	image_xscale = scale;
	image_yscale = scale;
	spriteHurt = spr_e_boxer_armL_hurt;
	spriteDefault = spr_e_boxer_armL;
	spriteAttack = spr_e_boxer_armL_attack;
	sprite_index = spriteDefault;
	side = LEFT;
	owner = master;
	//wiggleUp = false;
}
with (armR) {
	image_xscale = scale;
	image_yscale = scale;
	spriteHurt = spr_e_boxer_armR_hurt;
	spriteDefault = spr_e_boxer_armR;
	spriteDefault = spr_e_boxer_armR;
	spriteAttack = spr_e_boxer_armR_attack;
	sprite_index = spriteDefault;
	side = RIGHT;
	owner = master;
	//wiggleUp = true;
}
dir_attack = LEFT;
attack_arm = armL;
other_arm = armR;
arms = 2;

alarm_set(0, 0);
alarm_set(3, 100);