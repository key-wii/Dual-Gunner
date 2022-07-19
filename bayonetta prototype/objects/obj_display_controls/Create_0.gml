w = display_get_gui_width();
h = display_get_gui_height();
x = w / 2;
y = (h / 16);

fullText = "";
charCount = 0;
textSound = 0;
finished = false;

space = 0;
//p_space = 4;	NOT USING PORTRAIT

box_w = 0;
final_box_w = w - (space * 2);
final_box_h = h - (space * 2);
box_h = final_box_h;

boxLeft = w / 2 - box_w / 2;
boxTop = space;

text_draw = false;
ready_text = false;
//alarm_set(0, 1);
alarm_set(10, 1);

clicking = false;

textSpd = 1;
textSnd = snd_text1;

image_alpha = .1;
global.drawUI = false;

var strDeflect = 
	"Tap L/R Click --------- Melee (Deflects Projectiles)\n";
if (!global.unlockedDeflect) strDeflect = 
	"Tap L/R Click --------- Melee (Destroys Projectiles)\n";
var strDash =
	"Tap Spacebar ---------- Dash, leave behind Mirror\n" +
	"Tap Spacebar Twice ---- Explode your Mirrors\n\n"
if (!global.unlockedDash) strDash =
	"LOCKED ---------------- ????? ????? ?????? ??????\n" +
	"LOCKED ---------------- ??????? ???? ???????\n\n";
var strCounter = 
	"Tap Q ----------------- Block & Counter\n";
if (!global.unlockedCounter) strCounter =
	"LOCKED ---------------- ????? ? ???????\n";
var strTaunt =
	"Tap E ----------------- Fast Taunt\n" +
	"Hold E ---------------- Long Taunt\n\n";
if (!global.unlockedTaunt) strTaunt =
	"LOCKED ---------------- ???? ?????\n" +
	"LOCKED ---------------- ???? ?????\n\n";
var strFinisher =
	"Tap Q + E ------------- Finisher (Costs 8 Mana)\n";
if (!global.unlockedFinisher) strFinisher =
	"LOCKED ---------------- ???????? ?????? ? ?????\n";
var strHyper =
	"Click L + R ----------- Activate/Deactivate Hyper Mode (Costs 1 Mana)\n\n"
if (!global.unlockedHyper) strHyper =
	"LOCKED ---------------- ??????????????????? ????? ???? ??????????????\n\n"
strControls =
	"Controls\n\n" +
	
	"WASD ------------------ Movement\n" +
	"Mouse ----------------- Aim\n\n" +

	strDeflect +
	"Hold L Click ---------- Fire Left Gun\n" +
	"Hold R Click ---------- Fire Right Gun\n\n" +

	strDash +

	strCounter +
	strTaunt +

	strFinisher +
	strHyper +

	"Enter ----------------- Pause/Unpause";