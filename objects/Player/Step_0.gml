/// @description Insert description here
// You can write your code in this editor

healthbar_x = Player.x-50;
healthbar_y = Player.y -50;
if(!casting){
if (keyboard_check(ord("W")) && place_free(x,y-collision_speed) && 
	(!keyboard_check(ord("A"))&&!keyboard_check(ord("S"))&&!keyboard_check(ord("D"))))
		{vspeed=-walkspeed;facing=1;game_manager.facing=facing}
else if(keyboard_check(ord("W")) && place_free(x,y-collision_speed))
	{vspeed=-walkspeed;}
else 
	{vspeed=0;}

if (keyboard_check(ord("S")) && place_free(x,y+collision_speed) &&
	(!keyboard_check(ord("A"))&&!keyboard_check(ord("W"))&&!keyboard_check(ord("D"))))
		{vspeed=walkspeed; facing=3;game_manager.facing=facing}
else if (keyboard_check(ord("S")) && place_free(x,y+collision_speed))
	{vspeed=walkspeed;}
else 
	{}

if (keyboard_check(ord("A")) && place_free(x-collision_speed,y) &&
	(!keyboard_check(ord("W"))&&!keyboard_check(ord("S"))&&!keyboard_check(ord("D"))))
		{hspeed=-walkspeed; facing=2;game_manager.facing=facing}
else if (keyboard_check(ord("A")) && place_free(x-collision_speed,y))
	{hspeed=-walkspeed;}
else 
	{hspeed=0;}

if (keyboard_check(ord("D")) && place_free(x+collision_speed,y) &&
	(!keyboard_check(ord("A"))&&!keyboard_check(ord("S"))&&!keyboard_check(ord("W"))))
		{hspeed=walkspeed;facing=0;game_manager.facing=facing}
else if (keyboard_check(ord("D")) && place_free(x+collision_speed,y))
	{hspeed=walkspeed;}
else 
	{}
}
else{hspeed=0;vspeed=0;facing=4;}
if (facing==0){sprite_index=facing_right;}
if (facing==1){sprite_index=facing_up;}
if (facing==2){sprite_index=facing_left;}
if (facing==3){sprite_index=facing_down;}

if (facing==4){image_speed=0;}
else {image_speed=1;}

if(image_index>sprite_get_number(sprite_index)){image_index=0;}

//death
if(hp <= 0){
	room_goto(rm_game_over);
}

//when player touches an enemy
if(contact == true && is_invincible == false){
	Player.hp -= 1;
	Player.healthbar_width -= 20;
	alarm[0] = room_speed * 3;
	is_invincible = true;
	//damage/invulnerable animation
	flashAlpha = 1;
}

//when player gets hit by enemy melee attack
if(is_hit == true && is_invincible == false){
	Player.hp -= 2;
	Player.healthbar_width -= 40;
	alarm[1] = room_speed * 3;
	is_invincible = true;
	//invulnerable animation
	flashAlpha = 1;
}

//lessen flash
if(flashAlpha > 0){
	flashAlpha -= 0.05;
}

if (hp <=0){room_goto(Lose);}
	
	