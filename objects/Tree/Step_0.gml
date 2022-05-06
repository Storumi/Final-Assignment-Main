/// @description Insert description here
// You can write your code in this editor
offset=0;
renorm=0;
new_x=0;
renorm=image_xscale;
offset=sprite_width/2;
offset=offset;
new_x=x+offset;
if((y+sprite_height/2<Player.y)&&(collision_circle(new_x,y+sprite_height/2,50,Player,false,true))){layer_depth(layer_get_id("Foliage"),1);}

else if((y+sprite_height/2>Player.y)&&(collision_circle(new_x,y+sprite_height/2,50,Player,false,true))){layer_depth(layer_get_id("Foliage"),-1);}
else{}

