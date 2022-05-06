/// @description Insert description here
// You can write your code in this editor
projectilespeed = 0;
alarm[0] = 1000;
alarm[1] = 1000;
collide = true;
if(facing == 0) {
	sprite_index = fire_sprite_explode;
	image_xscale = 1;
	hspeed=projectilespeed;
} else if(facing == 1) { //up
	sprite_index = up_fire_sprite_explode;
	vspeed=-projectilespeed;
} else if(facing == 2) {
	sprite_index = fire_sprite_explode;
	image_xscale = -1;
	hspeed=-projectilespeed;
} else if(facing == 3) { //down
	sprite_index = down_fire_sprite_explode;
	vspeed=projectilespeed;
}

other.id.collide = id;
