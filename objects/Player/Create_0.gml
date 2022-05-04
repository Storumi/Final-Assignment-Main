/// @description Insert description here
// You can write your code in this editor
 walkspeed = 3;
 collision_speed=3;
 facing = 4;
 image_speed=0;
 casting=false;
 game_manager.player_id=id;
 
 hp = 5;
 hp_max = hp;
 
 healthbar_width = 100;
 healthbar_height = 12;
 
 is_hit = false;
 is_invincible = false;

 
 /*
 0 means facing right
 1 means facing up
 2 means facing left
 3 means facing down
 4 means idle
 */

camera_set_view_pos(view_camera[0], x - (view_wport[0] / 2), y - (view_hport[0] / 2));


