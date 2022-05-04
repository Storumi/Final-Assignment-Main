instance_deactivate_object(id);

if(distance_to_object(Walker) < 50){
	Walker.hp -= 1;
	Walker.healthbar_width -= 10;
	//bzz bzz no move
}

