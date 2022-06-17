//Draw diamond around enemy capable of being Finished
draw_set_circle_precision(4);
draw_set_color(c_fuchsia);
if (instance_exists(enemyToFinish)) {
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 1, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 2, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 3, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 6, true);
	draw_circle(enemyToFinish.x, enemyToFinish.y, enemyToFinish.sprite_width + 7, true);
}
draw_set_color(c_white);
draw_set_circle_precision(64);