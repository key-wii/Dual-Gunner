function taunt_text() {
	/*if (direction >= 90 && direction < 270) {
		lenx *= 4;
		leny *= 4;
	}*/
	var xx = lengthdir_x(70, direction);
	var yy = lengthdir_y(70, direction);
	var text = instance_create_layer(x + hx + xx, y + hy + yy, "UI", obj_text_taunt);
	with (text) {
		var str = ";)";
		switch (other.rock) {
			case 1: str = "SHOW"; break;
			case 2: str = "ME"; break;
			case 3: str = "WHAT"; break;
			case 4: str = "YOU"; break;
			case 5: str = "GOT"; break;
		}
		txt = str;
		col1 = global.c_lightpink;
		col2 = global.c_pink;
		colOl1 = c_black;
		colOl2 = c_black;
		fnt = fnt_dmg1;
		/*image_angle = ddir - 90;
		if (image_angle > 90 && image_angle < 270) image_angle -= 180;*/
	}
}