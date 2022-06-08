/// @description 
event_inherited();

if (!ready_text) {
	alarm_set(1, 2);
	exit;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_controls);
var s = 20;
draw_text_color(space + s * 3, space + s * 1.5, "Controls\n\n" +
//draw_text(space, space + 50,
"WASD ------------------ Movement\n" +
"Mouse ----------------- Aim\n\n" +

"Tap L/R Click --------- Deflect Projectile\n" +
"Hold L Click ---------- Shot Type A\n" +
"Hold R Click ---------- Shot Type B\n\n" +

"Tap Spacebar ---------- Dash, leave behind Mirror\n" +
"Tap Spacebar Twice ---- Explode your Mirrors\n\n" +

"Tap Q ----------------- Block & Counter\n" +
"Tap E ----------------- Fast Taunt\n" +
"Hold E ---------------- Long Taunt\n\n" +

"Tap Q + E ------------- Finisher (Costs 8 Mana)\n" +
"Click L + R ----------- Activate/Deactivate Hyper Mode (Costs 1 Mana)\n\n" +

"ESC ------------------- Close Window",
c_lime, c_lime, c_lime, c_lime, image_alpha);