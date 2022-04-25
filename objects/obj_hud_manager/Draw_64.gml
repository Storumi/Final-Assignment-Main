/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spellbox, 0, hud_x, hud_y, scale, scale, 0, c_white, 1);

//spells
draw_sprite_ext(fire, 0, spell_x, spell_y, scale, scale, 0, c_white, 1);
draw_sprite_ext(zap, 0, spell_x + (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
draw_sprite_ext(heal, 0, spell_x + 2 * (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
draw_sprite_ext(ice, 0, spell_x + 3 * (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);


if(fire_cd) {
	draw_sprite_ext(cooldown, 0, spell_x, spell_y, scale, scale, 0, c_white, 1);
} else {
	draw_sprite_ext(fire, 0, spell_x, spell_y, scale, scale, 0, c_white, 1);
}

if(zap_cd) {
	draw_sprite_ext(cooldown, 0, spell_x + (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
} else {
	draw_sprite_ext(zap, 0, spell_x + (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
}

if(heal_cd) {
	draw_sprite_ext(cooldown, 0, spell_x + 2 * (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
} else {
	draw_sprite_ext(heal, 0, spell_x + 2 * (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
}

if(ice_cd) {
	draw_sprite_ext(cooldown, 0, spell_x + 3 * (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
} else {
	draw_sprite_ext(ice, 0, spell_x + 3 * (spell_w * scale + 16), spell_y, scale, scale, 0, c_white, 1);
}
