/// @description New textbox
instance_destroy(tbox);
tbox = instance_create_layer(0, 0, "UI", obj_textbox);
tbox.owner = id;
tbox.fullText =
	"You can review it whenever you like.\n" +
	"Press Enter to view your inventory menu.";

nextBox = false;