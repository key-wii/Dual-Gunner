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