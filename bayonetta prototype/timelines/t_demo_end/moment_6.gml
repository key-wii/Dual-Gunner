/// @description End cutscene
instance_destroy(tbox);
global.cutscene = false;
nextBox = false;

with (obj_e_cutscene) {
	instance_change(prevObject, true);
}

with (obj_demo_end) displayText = true;