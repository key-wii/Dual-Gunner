/// @description 
if (depth < layer_get_depth(layer_get_id("Floor"))) {
	depth += 5;
	image_alpha -= .0025;
	speed += .00001;
	alarm_set(1, 1);
}