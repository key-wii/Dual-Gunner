w = display_get_gui_width();
h = display_get_gui_height();
x = w / 2;
y = h * 1.2 - (h / 16);

fullText = "";
charCount = 0;
textSound = 0;
finished = false;

space = 10;
//p_space = 4;	NOT USING PORTRAIT

box_w = 30;
box_h = 30;
//yy = h - (h / 1.9) + 92;
final_box_w = w - (space * 2);
final_box_h = h / 4;

boxLeft = w / 2 - box_w / 2;
//boxTop = h - box_h - space;
boxTop = y;

/*text_y = 0;
up = true;*/

text_draw = false;
ready_text = false;
//alarm_set(0, 1);
alarm_set(10, 1);

clicking = false;

//textfile = "intro.txt"; NOT USING TEXTFILE
//portrait = spr_por_0;	NOT USING PORTRAIT
textSnd = snd_text1;