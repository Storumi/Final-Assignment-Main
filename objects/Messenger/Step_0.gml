/// @description Insert description here
// You can write your code in this editor
if(collision_rectangle(x+sprite_width,y+sprite_height,x,y,Player,true,true)){can_talk_to=true;}
else{can_talk_to=false;}

if(game_manager.key_collected){dialogue_output=dialogue_2}
else{dialogue_output=dialogue_1;}

if(game_manager.door_collected){dialogue_output=dialogue_3}





/*

___________________________________________
############################################################################################
ERROR in
action number 1
of  Step Event0
for object Messenger:

attempting to call invalid function with script index -4
 at gml_Object_Messenger_Step_0 (line 3) - if(collision_rectangle(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2,all,true,true)(x,y,all)){can_talk_to=true;}
############################################################################################
gml_Object_Messenger_Step_0 (line 3)
