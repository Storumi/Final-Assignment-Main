/// @description Insert description here
// You can write your code in this editor
if(can_talk_to){game_manager.dialogue_output=dialogue_output;
	game_manager.dist_check_x=x;
	game_manager.dist_check_y=y;
	instance_create_depth(x-100,y-150,layer_get_depth(layer_get_id("UI")),asset_get_index("dialogue_box"))}
