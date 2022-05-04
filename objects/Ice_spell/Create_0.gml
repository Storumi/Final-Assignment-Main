projectilespeed=2;
image_speed=0.1;
alarm[0]=60;
facing=game_manager.facing;
if(facing==0){
	image_xscale = 1;
	hspeed=projectilespeed;
	}
else if(facing==1){
	vspeed=-projectilespeed;
	}
else if(facing==2){
	image_xscale = -1;
	hspeed=-projectilespeed;
	}
else if(facing==3){
	vspeed=projectilespeed;
	}

