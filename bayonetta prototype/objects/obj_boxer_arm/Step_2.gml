/// @description 
if (!instance_exists(owner)) exit;
x = owner.x + lengthdir_x(
	owner.sprite_width / 2 + len_adjust - abs(wiggle) + originAdjust,
	owner.direction + dir_adjust * side + 90 * side);
y = owner.y + lengthdir_y(
	owner.sprite_width / 2 + len_adjust - abs(wiggle) + originAdjust,
	owner.direction + dir_adjust * side + 90 * side);

direction = owner.direction + wiggle + dir_adjust * side;
image_angle = direction;

x += lengthdir_x(60, direction + 180);
y += lengthdir_y(60, direction + 180);