//Finisher cancels melee
finisher();

//Hyper cancels melee
hyper_check(true);

direction = direction + 16 * dir_face * -1;
image_angle = direction;

prev_ang = image_angle;

if (hp > 0) exit;
death();