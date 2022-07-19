/// @description Next textbox X2
var str = "";
switch (tboxCount) {
	case 0: str =
		"Eliminate all enemies\n" +
		"and keep moving."; break;
	case 1: str =
		"Remember the last bullet of\n" +
		"each magazine deals additional damage."; break;
}
tbox.fullText = str;

tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;