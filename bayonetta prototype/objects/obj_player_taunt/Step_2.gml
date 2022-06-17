//Finisher cancels taunt
finisher();

//Hyper during taunt
hyper_check(false);

prev_ang = image_angle;

image_angle = direction;
if (hp > 0) exit;
death();