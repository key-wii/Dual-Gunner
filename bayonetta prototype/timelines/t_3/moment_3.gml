/// @description Next textbox X3, item get sfx
var str = "";
switch (tboxCount) {
	case 0: str =
		"Unlocked: Counter";
		tbox.textSpd = .6;
		sound_machine(snd_textItemObtained);
		break;
	case 1: str =
		"Press Q to Block.";
		textSpd = .8;
		break;
	case 2: str =
		"I updated the manual in your inventory to reflect this.\n" +
		"Now go kick some ass!"; break;
}
tbox.fullText = str;

tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;
