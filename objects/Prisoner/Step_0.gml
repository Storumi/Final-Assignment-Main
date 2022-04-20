/// @description Insert description here
// You can write your code in this editor
if(collision_rectangle(x+sprite_width,y+sprite_height,x,y,Player,true,true)){can_talk_to=true;}
else{can_talk_to=false;}

if(game_manager.key_collected){dialogue_output=dialogue_2}
else{dialogue_output=dialogue_1;}

if(game_manager.door_collected){dialogue_output=dialogue_3}



