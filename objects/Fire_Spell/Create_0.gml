/// @description Insert description here
// You can write your code in this editor
projectilespeed = 3;
image_speed = 1;
alarm[0] = 40;
alarm[1] = 70;
facing = game_manager.facing;
if(facing == 0) {
	image_xscale = 1;
	hspeed=projectilespeed;
} else if(facing == 1) { //up
	sprite_index = up_fire_sprite;
	vspeed=-projectilespeed;
} else if(facing == 2) {
	image_xscale = -1;
	hspeed=-projectilespeed;
} else if(facing == 3) { //down
	sprite_index = down_fire_sprite;
	vspeed=projectilespeed;
}

timer = 0;
collide = false;
 
 /*
 0 means facing right
 1 means facing up
 2 means facing left
 3 means facing down
 4 means idle
 */
