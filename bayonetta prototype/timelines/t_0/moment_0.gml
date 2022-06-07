/// @description Start cutscene, First textbox
global.cutscene = true;

tbox = instance_create_layer(0, 0, "UI", oTextbox);
tbox.owner = id;
tbox.fullText =
	"This is how long a textline can be! It is verrrrrrryyyyyyyyyyyyy long.";
	/*"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n" +
	"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n" +
	"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n" +
	"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n" +
	"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";*/
	
with (obj_e_parent) {
	prevObject = object_index;
	var spr = sprite_index;
	instance_change(obj_e_cutscene, true);
	sprite_index = spr;
}
instance_destroy(obj_e_move_parent);