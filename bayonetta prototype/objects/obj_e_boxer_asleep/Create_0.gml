var scale = 2;

maxHp = 80;
hp = maxHp;
spriteDefault = spr_e_boxer;
spriteHurt = spr_e_dummy_hurt;

move = instance_create_layer(x, y, "Enemy", obj_e_move_big);
move.owner = id;
move.edge = 0;
with (move) {
	weight = 2;
	image_xscale = scale;
	image_yscale = scale;
}
x_adjust = 0;
y_adjust = 0;

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();

image_xscale = scale;
image_yscale = scale;
pow = 15; //used for bumping into other enemies
invincible = true;
spin = 0;
dizzyState = obj_e_big_dizzy;

direction = 270;
image_angle = direction;
alarm_set(0, 10);
Z = 0;