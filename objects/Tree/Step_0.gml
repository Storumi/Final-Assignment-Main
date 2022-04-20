/// @description Insert description here
// You can write your code in this editor
if((y>Player.y)&&(collision_circle(x+sprite_width/2,y+sprite_height/2,7,Player,false,true))){layer_depth(layer_get_id("Foliage"),-1);}

else if(y<Player.y)&&(collision_circle(x+sprite_width/2,y+sprite_height/2,7,Player,false,true)){layer_depth(layer_get_id("Foliage"),1);}
else{}

