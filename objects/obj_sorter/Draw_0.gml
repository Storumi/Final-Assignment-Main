/// @description Insert description here
// You can write your code in this editor

var dgrid = depth_grid;
ds_grid_resize(dgrid, 2, instance_number(par_depth));

//https://www.youtube.com/watch?v=8QCgN2RDA9I
//accessible by all children
var yy = 0; with(par_depth) {
	dgrid[# 0, yy] = id;
	dgrid[# 1, yy] = y;
	yy++;
}


//sorting
ds_grid_sort(dgrid, 1, true);

//draw
yy = 0;
repeat(instance_number(par_depth)) {
	var inst = dgrid[# 0, yy];
	with(inst) {
		//draw_self();
		event_perform(ev_draw, 0);
	}
	yy++;
}
