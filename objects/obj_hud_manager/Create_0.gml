/// @description Insert description here
// You can write your code in this editor
scale = 3; //temp
global.game_width = 640;
global.game_height = 480;

spellbox = hud_sprite;
fire = fireball_sprite;
ice = ice_sprite;
heal = heal_sprite;
zap = ele_sprite;
heart = heart_sprite;
cooldown = cd_sprite;

fire_cd = false;
ice_cd = false;
heal_cd = false;
zap_cd = false;

fire_timer = 0;
ice_timer = 0;
heal_timer = 0;
zap_timer = 0;

player_timer = 0;

spellbox_w = sprite_get_width(spellbox);
spellbox_h = sprite_get_height(spellbox);
spell_w = sprite_get_width(fire);
spell_h = sprite_get_height(fire);

hud_x = (global.game_width / 2 - spellbox_w - 30) * scale; //93 is buffer number, it just works
hud_y = (global.game_height / 2 - spellbox_h/2)  * scale;

spell_x = hud_x + (2 * scale);
spell_y = hud_y + (2 * scale);

