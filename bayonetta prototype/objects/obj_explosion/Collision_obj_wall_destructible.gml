/// @description Destroy walls
with (other) {
	explode_nonlethal(point_direction(other.x, other.y, x, y));
	instance_destroy();
}