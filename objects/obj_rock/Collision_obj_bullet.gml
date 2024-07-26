/// @description Insert description here
// You can write your code in this editor
obj_game.points += 50;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_asteroide
{
	sprite_index = spr_asteroide_smaller;
	instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
	sprite_index = spr_asteroide;
	x = -100;
}
else 
{
	instance_destroy();
}