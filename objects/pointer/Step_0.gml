/// @description Insert description here
// You can write your code in this editor
ref_x=variable_instance_get(game_manager.menu_id,"x");
ref_y=variable_instance_get(game_manager.menu_id,"y");
x=ref_x+10;
y=ref_y+17.5+variable_instance_get(game_manager.menu_id,"pointer_index")*15;