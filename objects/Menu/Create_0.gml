/// @description Insert description here
// You can write your code in this editor
game_manager.menu_id=id;
pointer_id=0;
pointer_index=0;
pointer_index_max=4;
image_xscale=1;
image_yscale=1;
spells=[];
spells[0]="Firaga";
spells[1]="Thundaga";
spells[2]="Blizzaga";
spells[3]="Gravi"
spells[4]="Cure"
instance_create_depth(x,y,layer_get_depth(layer_get_id("UI2")),asset_get_index("pointer"));