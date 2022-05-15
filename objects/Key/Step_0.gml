/// @description Insert description here
// You can write your code in this editor
if collected!=last_collected{audio_play_sound(asset_get_index("Key_pickup_sound"),1,false);game_manager.key_collected=true;
	last_collected=collected;instance_destroy(self);}
