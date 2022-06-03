//music_machine(msc_music);
global.block = ord("Q");
global.dash = vk_space;
global.taunt = ord("E");

global.damage_depth = 0;


global.partSystem = part_system_create();
part_system_depth(global.partSystem, layer_get_depth("Controller") - 1);
global.partSystemAbove = part_system_create();
part_system_depth(global.partSystem, layer_get_depth("Above") - 1);

global.partDash = part_type_create();
part_type_sprite(global.partDash, spr_part_dash, false, false, false);
part_type_size(global.partDash, 1, 1, -.05, 0);
part_type_speed(global.partDash, 2, 2, .2, 1);
part_type_alpha1(global.partDash, 1);
part_type_blend(global.partDash, true);
part_type_life(global.partDash, 20, 20);

global.partDizzy64 = part_type_create();
part_type_shape(global.partDizzy64, pt_shape_star);
part_type_color1(global.partDizzy64, c_yellow);
part_type_size(global.partDizzy64, .3, .3, .0005, 0);
part_type_speed(global.partDizzy64, 4, 4, 0, 0);
part_type_direction(global.partDizzy64, 180, -180, 9, 0);
part_type_orientation(global.partDizzy64, 0, 359, -.5, 0, 0);
part_type_alpha3(global.partDizzy64, .7, 1, .5);
part_type_blend(global.partDizzy64, true);
part_type_life(global.partDizzy64, 40, 40);

global.partDizzy192 = part_type_create();
part_type_shape(global.partDizzy192, pt_shape_star);
part_type_color1(global.partDizzy192, c_yellow);
part_type_size(global.partDizzy192, .5, .5, .00025, 0);
part_type_speed(global.partDizzy192, 4, 4, 0, 0);
part_type_direction(global.partDizzy192, 180, -180, 4, 0);
part_type_orientation(global.partDizzy192, 0, 359, -.5, 0, 0);
part_type_alpha3(global.partDizzy192, .5, 1, 0);
part_type_blend(global.partDizzy192, true);
part_type_life(global.partDizzy192, 100, 100);

global.partDizzy192B = part_type_create();
part_type_shape(global.partDizzy192B, pt_shape_star);
part_type_color1(global.partDizzy192B, c_yellow);
part_type_size(global.partDizzy192B, .5, .5, .00025, 0);
part_type_speed(global.partDizzy192B, 4, 4, 0, 0);
part_type_direction(global.partDizzy192B, 0, -360, 4, 0);
part_type_orientation(global.partDizzy192B, 0, 359, .5, 0, 0);
part_type_alpha3(global.partDizzy192B, .8, 1, 0);
part_type_blend(global.partDizzy192B, true);
part_type_life(global.partDizzy192B, 100, 100);