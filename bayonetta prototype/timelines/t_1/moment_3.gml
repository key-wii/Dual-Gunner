/// @description Next textbox X3
var str = "";
switch (tboxCount) {
	case 0: str =
		"Eliminate all enemies\n" +
		"then evacuate the vacinity."; break;
	case 1: str =
		"Experiment with a mix of\n" +
		"Left and Right attacks\n" +
		"to feel out different combos."; break;
	case 2: str =
		"Remember the last attack in a\n" +
		"full combo unleashes up to 2 AoE blasts."; break;
}
tbox.fullText = str;
	
tbox.charCount = 0;
tbox.finished = false;

nextBox = false;
tboxCount++;