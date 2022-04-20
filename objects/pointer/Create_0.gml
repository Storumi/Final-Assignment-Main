/// @description Insert description here
// You can write your code in this editor
game_manager.pointer_id=id;
variable_instance_set(game_manager.menu_id,"pointer_id",id);
//Menu.pointer_id=id;
ref_x=variable_instance_get(game_manager.menu_id,"x");
ref_y=variable_instance_get(game_manager.menu_id,"y");
x=ref_x+20;
image_xscale=.1;
image_yscale=.1;
