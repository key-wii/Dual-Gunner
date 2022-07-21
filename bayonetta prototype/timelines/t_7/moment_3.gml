/// @description Next textbox X2
var str = "";
switch (tboxCount) {
	case 0: str =
		"Unlocked: Deflect"; break;
	case 1: str =
		"Your melee attacks now deflect bullets!"; break;
}
tbox.fullText = str;

tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;