function draw_damage(num) {
	var dep = layer_get_depth(layer_get_id("UI"));
	var text = instance_create_depth(x, y, dep, obj_text_parent);
	text.txt = string_format(real(num) * 10, 1, 0);
	global.damage_depth++;
	with (text) {
		depth -= global.damage_depth;
			 if (num >= 15) fnt = fnt_dmg8;
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
		alarm_set(0, 100);
		alarm_set(1, 1);
	}
	with (obj_text_dmg) depth -= 1;
	with (damage_text) {
			 if (dmg >= 900) fnt = fnt_dmg10;
		else if (dmg >= 800) fnt = fnt_dmg9;
		else if (dmg >= 700) fnt = fnt_dmg8;
		else if (dmg >= 600) fnt = fnt_dmg7;
		else if (dmg >= 500) fnt = fnt_dmg6;
		else if (dmg >= 400) fnt = fnt_dmg5;
		else if (dmg >= 300) fnt = fnt_dmg4;
		else if (dmg >= 200) fnt = fnt_dmg3;
		else if (dmg >= 100) fnt = fnt_dmg2;
		else fnt = fnt_dmg1;
	}
	
	if (hp - num <= -9.9) draw_overkill();
}

function draw_overkill() {
	var dep = layer_get_depth(layer_get_id("Floor"));
	var text = instance_create_depth(x, y, dep - 1, obj_text_parent);
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
		alarm_set(0, 300);
	}
}