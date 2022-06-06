function draw_damage(num) {
	var dep = layer_get_depth(layer_get_id("UI"));
	var text = instance_create_depth(x, y, dep, obj_text_parent);
	text.txt = string_format(real(num) * 10, 1, 0);
	global.damage_depth++;
	with (text) {
		depth -= global.damage_depth;
			 if (num >= 999) fnt = fnt_dmg10;
		else if (num >= 500) fnt = fnt_dmg9;
		else if (num >= 15) fnt = fnt_dmg8;
		else if (num >= 12) fnt = fnt_dmg7;
		else if (num >= 10) fnt = fnt_dmg6;
		else if (num >= 8) fnt = fnt_dmg5;
		else if (num >= 6) fnt = fnt_dmg4;
		else if (num >= 4) fnt = fnt_dmg3;
		else if (num >= 2) fnt = fnt_dmg2;
		else fnt = fnt_dmg1;
	}
	with (obj_controller) alarm_set(4, 50); //Reset damage depth when no text is on screen
	
	if (!instance_exists(damage_text)) {
		damage_text = instance_create_depth(x, y, dep - 1, obj_text_dmg);
		damage_text.depth -= global.damage_depth;
		damage_text.owner = id;
		with (damage_text) {
			dmg = num * 10;
			col1 = c_white;
			col2 = c_white;
			colOl1 = c_black;
			colOl2 = c_black;
		}
	} else with (damage_text) {
		dmg += num * 10;
		
		image_alpha = 1;
		direction = 90;
		speed = .05;
		alarm_set(0, 10);
		alarm_set(1, 1);
	}
	with (obj_text_dmg) depth -= 1;
	with (damage_text) {
			 if (dmg >= 9999) fnt = fnt_dmg12;
		else if (dmg >= 7000) fnt = fnt_dmg11;
		else if (dmg >= 5000) fnt = fnt_dmg10;
		else if (dmg >= 4000) fnt = fnt_dmg9;
		else if (dmg >= 3000) fnt = fnt_dmg8;
		else if (dmg >= 2000) fnt = fnt_dmg7;
		else if (dmg >= 1000) fnt = fnt_dmg6;
		else if (dmg >= 750) fnt = fnt_dmg5;
		else if (dmg >= 500) fnt = fnt_dmg4;
		else if (dmg >= 250) fnt = fnt_dmg3;
		else if (dmg >= 100) fnt = fnt_dmg2;
		else fnt = fnt_dmg1;
	}
	
	if (hp - num <= -9.9) draw_overkill();
}

function draw_hp() {
	if (!instance_exists(hp_gauge)) {
		hp_gauge = instance_create_layer(x, y, "UI", obj_hp_gauge);
		hp_gauge.owner = id;
		hp_gauge.maxHp = maxHp;
		hp_gauge.hp = hp;
		hp_gauge.hpDrawn = hp;
	} else with (hp_gauge) {
		hp = other.hp;
		
		alarm_set(0, 60);
		if (image_alpha < 1) {
			image_alpha = 1;
			alarm_set(1, 1);
		}
	}
}

function draw_overkill() {
	var dep = layer_get_depth(layer_get_id("UI"));
	var text = instance_create_depth(x, y, dep - 1, obj_text_overkill);
	with (text) {
		txt = "OVERKILL";
		var ran = irandom_range(-2, 1);
		if (ran >= 0) ran += 1;
		image_angle += (ran * 15) + irandom(5);
		speed = .001;
		col1 = c_red;
		col2 = c_red;
		colOl1 = c_black;
		colOl2 = c_black;
		fnt = fnt_dmg10;
		depth -= global.damage_depth;
		alarm_set(0, 250);
	}
}