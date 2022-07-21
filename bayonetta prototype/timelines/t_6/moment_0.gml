/// @description Start cutscene, First textbox
global.cutscene = true;

tbox = instance_create_layer(0, 0, "UI", obj_textbox);
tbox.owner = id;
tbox.fullText =
	"Last, I'm upgrading your melee attack.";
	
with (obj_e_parent) {
	prevObject = object_index;
	var spr = sprite_index;
	instance_change(obj_e_cutscene, true);
	sprite_index = spr;
}
instance_destroy(obj_e_move_parent);

tboxCount = 0;
tboxMax = 4;

global.unlockedDeflect = true;