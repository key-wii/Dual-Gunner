/// @description Destroy walls
if (!chainExplode) exit;
with (other) {
	explode_nonlethal(point_direction(other.x, other.y, x, y));
	instance_destroy();
}