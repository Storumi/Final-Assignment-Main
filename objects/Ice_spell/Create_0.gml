projectilespeed=2;
image_speed=0.1;
alarm[0]=120;
facing=game_manager.facing;
if(facing==0){
	image_xscale = 1;
	hspeed=projectilespeed;
	x += 50;
	}
else if(facing==1){
	vspeed=-projectilespeed;
	sprite_index = ice_attack_ver_sprite;
	y -= 50;
	}
else if(facing==2){
	image_xscale = -1;
	hspeed=-projectilespeed;
	x -= 50;
	}
else if(facing==3){
	vspeed=projectilespeed;
	sprite_index = ice_attack_ver_sprite_down;
	y += 50;
	}

audio_play_sound(asset_get_index("woosh"),1,false);
