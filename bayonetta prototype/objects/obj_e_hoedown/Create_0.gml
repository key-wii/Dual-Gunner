//y = room_height / 2;
var scale = 3;

maxHp = 255;
hp = maxHp;
spriteDefault = sprite_index;
spriteHurt = spr_e_dummy_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move);
move.owner = id;
with (move) {
	weight = 6;
	image_xscale = scale;
	image_yscale = scale;
}
x_adjust = 0;
y_adjust = 0;

alarm_set(0, 60);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();

image_xscale = scale;
image_yscale = scale;
shield = true;
spin = 0;
dizzyState = obj_e_big_dizzy;
charging = false;
chargeMax = 80;
chargeMin = 5;
charge = chargeMax;
