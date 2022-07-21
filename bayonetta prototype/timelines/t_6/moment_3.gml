/// @description Next textbox X4, item get sfx
var str = "";
switch (tboxCount) {
	case 0: str =
		"Unlocked: Deflect";
		sound_machine(snd_textItemObtained);
		break;
	case 1: str =
		"Your melee attacks now deflect bullets!"; break;
	case 2: str =
		"No additional inputs needed."; break;
	case 3: str =
		"You should be capable of handling this group surrounding you."; break;
}
tbox.fullText = str;

tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;