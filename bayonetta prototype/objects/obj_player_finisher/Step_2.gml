if (first_hit) dir_adjust += 30;
else if (last_hit) dir_adjust += 4;
else dir_adjust = 0;

if (instance_exists(enemyToFinish)) direction = point_direction(x, y, enemyToFinish.x, enemyToFinish.y);
image_angle = direction + dir_adjust * dir_face;

if (hp > 0) exit;
death();