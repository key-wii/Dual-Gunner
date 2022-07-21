/// @description Next textbox X4, item get sfx
var str = "";
switch (tboxCount) {
	case 0: str =
		"Unlocked: Dash";
		sound_machine(snd_textItemObtained);
		break;
	case 1: str =
		"Press Spacebar to dash quickly.\n" +
		"After dashing, you'll leave a thin wall behind you."; break;
	case 2: str =
		"Double tap Spacebar to explode that wall for AoE damage.";
		textSpd = 1;
		break;
	case 3: str =
		"Make good use of this ability.";
		textSpd = .6;
		break;
}
tbox.fullText = str;

tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;