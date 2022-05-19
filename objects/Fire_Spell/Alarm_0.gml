/// @description Insert description here
// You can write your code in this editor
projectilespeed = 1;
if(facing == 0) {
	sprite_index = fire_sprite_fizzle;
	image_xscale = 1;
	hspeed=projectilespeed;
} else if(facing == 1) { //up
	sprite_index = up_fire_sprite_fizzle;
	vspeed=-projectilespeed;
} else if(facing == 2) {
	sprite_index = fire_sprite_fizzle;
	image_xscale = -1;
	hspeed=-projectilespeed;
} else if(facing == 3) { //down
	sprite_index = down_fire_sprite_fizzle;
	vspeed=projectilespeed;
}

