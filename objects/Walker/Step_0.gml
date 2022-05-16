switch(state)
	{
		case wander:
			if(distance_to_object(Player)<aggro_radius)
				{
					state=aggro;
				}	
		break;

		case aggro:
			direction=point_direction(x, y, Player.x, Player.y);
			if(distance_to_object(Player)>attack_radius)
				{
					speed=1;
				}
			else{state=Attack;speed=0;waittimer=0;attack_x=Player.x-32;attack_y=Player.y-32}
		break;
		
		case Attack:
			
			if(waittimer<60){waittimer++}
			else if(waittimer==60)
				{
					var temp= instance_create_layer(attack_x,attack_y,"instances",Enemy_Attack);
					temp.direction=direction;
					waittimer++;
				}
			else if(waittimer<75)
				{
					waittimer++;
				}
			else{waittimer=0;state=wander}

		break;
	}

if(hspeed>0){h=true}
else{h=false}

if(vspeed>0){v=true}
else{v=false};

if (h)
	{
		if(v)
			{
				if(abs(hspeed)>abs(vspeed)){sprite_index=enemy_right}
				else{sprite_index=enemy_down}
			}
		else
			{
				if(abs(hspeed)>abs(vspeed)){sprite_index=enemy_right}
				else{sprite_index=enemy_up}
			}
	}
else
	{
		if(v)
			{
				if(abs(hspeed)>abs(vspeed)){sprite_index=enemy_left}
					else{sprite_index=enemy_down}
			}
		else
			{
				if(abs(hspeed)>abs(vspeed)){sprite_index=enemy_left}
				else{sprite_index=enemy_up}
			}
	}
	
if(speed>0){image_speed=1}
else{image_speed=0;}
healthbar_x = self.x-15.5;
healthbar_y = self.y -35;

/*
var fire_collision = instance_place(x, y, Fire_Spell);
if (fire_collision != noone && collide == false) {
	collide = true;
	collision_timer = 0;
	id.hp -= 2;
	id.healthbar_width -= 20;
}


collision_timer++;
if(collision_timer == 20) {
	collide = false;
}
*/
//death
if(hp <= 0){
	//play death animation?
	instance_destroy(self);
}

//lessen flash
if(flashAlpha > 0){
	flashAlpha -= 0.05;
}

