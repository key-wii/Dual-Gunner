/// @description Next textbox X2
var str = "";
switch (tboxCount) {
	case 0: str =
		"Eliminate the target.\n" +
		"Use any means necessary."; break;
	case 1: str =
		"As usual, make sure to check the manual\n" +
		"before you initiate combat."; break;
}
tbox.fullText = str;
	
tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;