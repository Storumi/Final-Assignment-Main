/// @description Insert description here
// You can write your code in this editor
audio_play_sound(asset_get_index("explode"),1,false);

projectilespeed = 0;
alarm[0] = 1000;
alarm[1] = 1000;
collide = true;
if(facing == 0) {
	sprite = fire_sprite_explode;
	image_xscale = 1;
	hspeed=projectilespeed;
} else if(facing == 1) { //up
	sprite = up_fire_sprite_explode;
	vspeed=-projectilespeed;
} else if(facing == 2) {
	sprite = fire_sprite_explode;
	image_xscale = -1;
	hspeed=-projectilespeed;
} else if(facing == 3) { //down
	sprite = down_fire_sprite_explode;
	vspeed=projectilespeed;
}

other.id.collide = id;

other.id.flashAlpha = 1;
other.id.hp -= 2;
other.id.healthbar_width -= 20;
mask_index=empty_sprite;
