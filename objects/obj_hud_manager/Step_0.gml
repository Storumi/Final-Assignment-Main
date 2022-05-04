/// @description Insert description here
// You can write your code in this editor

//bind abilities to J, K, L, ;
if(keyboard_check(ord("J")) && !fire_cd) { 
	fire_cd = true;
	instance_create_depth(Player.x,Player.y - 20,layer,Fire_Spell);
} else if(keyboard_check(ord("K")) && !zap_cd) {
	zap_cd = true;
	instance_create_depth(Player.x,Player.y,layer,Lightning_Spell);
} else if(keyboard_check(ord("L")) && !heal_cd && Player.hp < 5) {
	heal_cd = true;
	instance_create_depth(Player.x,Player.y,layer,Heal_Spell);
} else if(keyboard_check(186)  && !ice_cd) {
	ice_cd = true;
	instance_create_depth(Player.x,Player.y - 10,layer,Ice_Spell);
}

//fire cooldown
if(fire_cd) {
	fire_timer++;
	if(fire_timer == 80) {
		fire_timer = 0;
		fire_cd = false;
	}
}


//zap cooldown
if(zap_cd) {
	zap_timer++;
	if(zap_timer == 160) {
		zap_timer = 0;
		zap_cd = false;
	}
}

//heal cooldown
if(heal_cd) {
	heal_timer++;
	if(heal_timer == 300) {
		heal_timer = 0;
		heal_cd = false;
	}
}

//freeze cooldown
if(ice_cd) {
	ice_timer++;
	if(ice_timer == 160) {
		ice_timer = 0;
		ice_cd = false;
	}
}
