var xx = lengthdir_x(sprite_width / 2, start_dir);
var yy = lengthdir_y(sprite_width / 2, start_dir);
atk = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
atk.direction = start_dir;
atk.image_angle = atk.direction;
atk.image_yscale *= dir_face;
atk.speed = 14;