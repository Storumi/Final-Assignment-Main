/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_stretched(health_bar,0,healthbar_x,healthbar_y,(hp/hp_max)*healthbar_width, healthbar_height);

//damage animation
if(flashAlpha > 0){
	shader_set(sh_damage);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	shader_reset();
}
