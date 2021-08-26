with (move) {
	topSpeed = topSpeed_default;
	burstSpeed = burstSpeed_default;
}
dash();
var xx = lengthdir_x(sprite_width, direction);
var yy = lengthdir_y(sprite_width, direction);
splatterAt(x+ xx, y + yy, 4, 24);

instance_destroy();