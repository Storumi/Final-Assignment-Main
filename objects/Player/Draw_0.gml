
draw_self();
//draw_text(x,y-50,string(layer_get_depth(layer_get_id("Instances"))));
//draw_text(x,y+50,string(facing));

draw_sprite_stretched(health_bar,0,healthbar_x,healthbar_y,(hp/hp_max)*healthbar_width, healthbar_height);
draw_sprite(healthbar_border,0,healthbar_x, healthbar_y);

//damage/invulnerable animation
if(flashAlpha > 0){
	shader_set(sh_damage);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	shader_reset();
}
