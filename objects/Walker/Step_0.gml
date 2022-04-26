switch(state)
	{
		case wander:
			if(distance_to_object(Player)<aggro_radius)
				{
					state=aggro;
				}	
		break;

		case aggro:
			direction=point_direction(x,y,Player.x,Player.y);
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
				if(abs(hspeed)>abs(vspeed)){sprite_index=facing_right}
				else{sprite_index=facing_down}
			}
		else
			{
				if(abs(hspeed)>abs(vspeed)){sprite_index=facing_right}
				else{sprite_index=facing_up}
			}
	}
else
	{
		if(v)
			{
				if(abs(hspeed)>abs(vspeed)){sprite_index=facing_left}
					else{sprite_index=facing_down}
			}
		else
			{
				if(abs(hspeed)>abs(vspeed)){sprite_index=facing_left}
				else{sprite_index=facing_up}
			}
	}
	
if(speed>0){image_speed=1}
else{image_speed=0;}
