/// @description Insert description here
// You can write your code in this editor
if alarm[0] <=0 {
	// set a random variable
	var create = random_range(0,10);
	
	// create a human
	if create > 5 {
		instance_create_layer(x, y, "Instances", o_human_parent);
	}
	
	//reset timer
	alarm[0] = respawn_timer;
}