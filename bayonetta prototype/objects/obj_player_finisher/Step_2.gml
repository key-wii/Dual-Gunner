if (instance_exists(enemyToFinish)) direction = point_direction(x, y, enemyToFinish.x, enemyToFinish.y);
image_angle = direction;

if (hp > 0) exit;
death();