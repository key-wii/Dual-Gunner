//Draws box and up to 4 lines of text
function draw_textbox(box_left, box_top, box_w, box_h, txtSpd, txtSnd, sndModifer, drawPortrait) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_textbox);

	var spr;
	draw_9slice(box_left, box_top, box_w, box_h, spr, 0);
	//var por_h = box_h - p_space * 2;	NOT USING PORTRAIT
	//if (drawPortrait) draw_sprite_stretched(portrait, 0, box_left + p_space, box_top + p_space, por_h, por_h);

	if (!text_draw) exit;
	var tLen = string_length(fullText);
	if (charCount < tLen + 8) {
		if (textSound mod sndModifer == 0 && charCount < tLen) sound_machine(txtSnd);
		textSound += 1;
		charCount += txtSpd;
		//alarm_set(1, 30);
	} else {
		finished = true;
	}
	textPart = string_copy(fullText, 1, ceil(charCount));
	textHeight = string_height(textPart) + 2;
	var lines = string_count("\n", textPart) + 1;
	textHeight /= lines;
	var xxx = w / 2 + space / 4;
	var yyy = h - box_h + (box_h / 4) - (lines * 15) + (lines * 7);
	//allows up to 4 lines of text
	switch (lines) {
		case 3: yyy += 15; break;
		case 4: yyy += 22; break;
	}
	//draw_text(xxx + (por_h / 2) + 7, yyy + textHeight, textPart);	NOT USING PORTRAIT RN
	draw_text(xxx, yyy + /*text_y +*/ textHeight, textPart);
}