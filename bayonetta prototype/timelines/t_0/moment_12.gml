/// @description End cutscene
instance_destroy(tbox);
global.cutscene = false;

with (obj_e_cutscene) {
	instance_change(prevObject, true);
}