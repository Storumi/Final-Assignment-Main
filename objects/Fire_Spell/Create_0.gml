/// @description Insert description here
// You can write your code in this editor
projectilespeed=5;
image_speed=1;
alarm[0]=10;
facing=game_manager.facing;
if(facing==0){hspeed=projectilespeed}
else if(facing==1){vspeed=-projectilespeed}
else if(facing==2){hspeed=-projectilespeed}
else if(facing==3){vspeed=projectilespeed}

