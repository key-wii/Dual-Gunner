//maxHp = hp;
//hp = 1;
dizzy = 0;
dizzy_dmg = false; //Become dizzy whenever taking damage
dizzyState = obj_e_dizzy;

bodyPart = false;
invincible = false;
shield = false;

damage_text = instance_create_layer(x, y, "UI", obj_text_dmg);
instance_destroy(damage_text);
textX_adjust = 0;
textY_adjust = -50;
textX = x + textX_adjust;
textY = y + textY_adjust;