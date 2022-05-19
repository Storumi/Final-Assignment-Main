/// @description Insert description here
// You can write your code in this editor

if(key_collected){
	audio_play_sound(asset_get_index("door"),1,false);
	collected=true;
	instance_destroy(self);}