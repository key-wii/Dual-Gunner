//music_machine(msc_music);
global.block = ord("Q");
global.dash = vk_space;
global.taunt = ord("E");

global.mp = 0;
global.cameraAdjust = 100;
global.damage_depth = 0;
global.cutscene = false;

global.c_pink = $FF95FF;
global.c_lightpink = $FFCDFF;
global.c_pink2 = $FF00FF;
global.c_orange = $F8941D;
global.c_yellow = $C7E51B;

global.partSystem = part_system_create();
part_system_depth(global.partSystem, layer_get_depth("Controller") - 1);
global.partSystemAbove = part_system_create();
part_system_depth(global.partSystem, layer_get_depth("Above") - 1);

global.partHyper = part_type_create();
part_type_shape(global.partHyper, pt_shape_spark);
part_type_color2(global.partHyper, global.c_lightpink, global.c_pink);
part_type_size(global.partHyper, .5, .5, -.001, -.01);
part_type_speed(global.partHyper, 3, 3, .5, .1);
part_type_direction(global.partHyper, 0, 359, 0, 1);
part_type_alpha2(global.partHyper, .6, 0);
part_type_blend(global.partHyper, true);
part_type_life(global.partHyper, 5, 5);

global.partHyperStart = part_type_create();
part_type_shape(global.partHyperStart, pt_shape_disk);
part_type_color2(global.partHyperStart, global.c_lightpink, global.c_pink);
part_type_size(global.partHyperStart, .2, .2, .2, 0);
part_type_alpha3(global.partHyperStart, .7, .7, 0);
part_type_blend(global.partHyperStart, true);
part_type_life(global.partHyperStart, 30, 30);

global.partHyperEnd = part_type_create();
part_type_shape(global.partHyperEnd, pt_shape_disk);
part_type_color2(global.partHyperEnd, global.c_pink, global.c_lightpink);
part_type_size(global.partHyperEnd, 6, 6, -.2, 0);
part_type_alpha3(global.partHyperEnd, .7, .7, 0);
part_type_blend(global.partHyperEnd, true);
part_type_life(global.partHyperEnd, 30, 30);

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