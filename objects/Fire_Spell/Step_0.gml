/// @description Insert description here
// You can write your code in this editor
if(collide == true) {
	if(timer < 20) {
		timer++
	} else {
		instance_destroy(id);
	}
}
