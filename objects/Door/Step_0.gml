/// @description Insert description here
// You can write your code in this editor
//key_collected=variable_instance_get(inst_AD57578,"collected");
//if(key_collected){solid=false;}
if (collected!=last_collected) {
	game_manager.door_collected=true;
	}
last_collected=collected;
