//Follow Target
/*if (instance_exists(target)) {
	cameraX = target.x - (cameraWidth / 2);
	cameraY = target.y - (cameraHeight / 2);
}*/
if (global.start) {
	if (down) {
		cameraY += 20;
		if (cameraY > 10) down = false;
	}
	else {
		cameraY -= 2;
		if (cameraY <= 0) {
			cameraY = 0;
			global.start = false;
		}
	}
	//Set Camera Pos
	camera_set_view_pos(view_camera[0], cameraX + 100, cameraY + 100);
	exit;
}

if (!global.nextRoom && shakeSudden <= 0 && shakeSteady <= 0 && shakeMax == 0) {
	cameraX = clamp(cameraX, 0, room_width - cameraWidth);
	cameraY = clamp(cameraY, 0, room_height - cameraHeight);
}
if (shakeSudden > 0) {
	//Camera Shake stops suddenly
	if (!noHor) {
		cameraX += irandom_range(-shakeSudden - plusShake, shakeSudden + plusShake - 1);
		if (cameraX >= 0) cameraX++; //don't let 0 be an option
	}
	if (!noVer) {
		cameraY += irandom_range(-shakeSudden - plusShake, shakeSudden + plusShake - 1);
		if (cameraY >= 0) cameraY++; //don't let 0 be an option
	}
	
	if (shakeSudden > 20) shakeSudden -= .6;
	else shakeSudden -= .2;
	if (shakeSudden <= 0) reset_cam_vals();
}
//Camera Shake steadily slows down
if (shakeSteady > 0) {
	if (!noHor) {
		cameraX += irandom_range(-shakeSteady - plusShake, shakeSteady);
		if (cameraX >= 0) cameraX++; //don't let 0 be an option
	}
	if (!noVer) {
		cameraY += irandom_range(-shakeSteady - plusShake, shakeSteady);
		if (cameraY >= 0) cameraY++; //don't let 0 be an option
	}
	
	if (shakeSteady > 20) shakeSudden -= 4;
	else shakeSteady -= 2;
	if (shakeSteady <= 0) reset_cam_vals();
}
//Camera Shake at shake value(s)
if (shakeMax != 0) {
	//Camera Shake stops suddenly
	if (!noHor) cameraX += shakeMax + plusShake;
	if (!noVer) cameraY += shakeMax + plusShake;
	
	if (shakeMax > 0) shakeMax -= 1;
	else if (shakeMax < 0) shakeMax += 1;
	if (shakeMax < 1 && shakeMax > -1) reset_cam_vals();
}

//Set Camera Pos
camera_set_view_pos(view_camera[0], cameraX + 100, cameraY + 100);

//Parallax
/*layer_x("Parallax_0", cameraX * .76);
layer_y("Parallax_0", cameraY * .76);

layer_x("Parallax_1", cameraX * .52);
layer_y("Parallax_1", cameraY * .52);

layer_x("Parallax_2", cameraX * .37);
layer_y("Parallax_2", cameraY * .37);

layer_x("Parallax_3", cameraX * .19);
layer_y("Parallax_3", cameraY * .19);