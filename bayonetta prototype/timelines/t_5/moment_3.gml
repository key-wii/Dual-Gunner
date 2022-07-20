/// @description Next textbox X4
var str = "";
switch (tboxCount) {
	case 0: str =
		"Unlocked: Dash";
		sound_machine(snd_textItemObtained);
		break;
	case 1: str =
		"Press Spacebar to dash quickly."; break;
	case 2: str =
		"After, you'll leave behind a wall.\n" +
		"Double tap Spacebar to self-destruct walls for AoE damage.";
		textSpd = 1;
		break;
	case 3: str =
		"Make good use of it.";
		textSpd = .6;
		break;
}
tbox.fullText = str;

tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;