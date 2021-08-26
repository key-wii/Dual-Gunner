global.partSystem = part_system_create();
part_system_depth(global.partSystem, layer_get_depth("Controller") - 1);

global.partDash = part_type_create();
part_type_sprite(global.partDash, spr_part_dash, false, false, false);
part_type_size(global.partDash, 1, 1, -.05, 0);
part_type_speed(global.partDash, 2, 2, .2, 1);
part_type_alpha1(global.partDash, 1);
part_type_blend(global.partDash, true);
part_type_life(global.partDash, 20, 20);

music_machine(msc_music);