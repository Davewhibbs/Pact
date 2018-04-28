/// @description Insert description here
// You can write your code in this editor

// Active states
if active == true {
	// Check timer
	if alarm[0] <= 0 {
		// Detect Gamepad input
		if gamepad_axis_value(0, gp_axislh) > .25 || gamepad_axis_value(0, gp_axislh) < -.25{
			// switch active off
			active = false;
			
			// reset timer
			alarm[0] = timer;
		}
	}
	
	// if A is pressed, quit the game
	if gamepad_button_check_released(0, gp_face1){
		game_end();
	}
	
	// Set Hover Sprite
	sprite_index = s_quit;
}
else{
	if alarm[0] <= 0{
		// Detect Gamepad input
		if gamepad_axis_value(0, gp_axislh) > .25 || gamepad_axis_value(0, gp_axislh) < -.25{
			// switch active on
			active = true;
			
			// reset timer
			alarm[0] = timer;
		}
	}
	
	// Set Regular Sprite
	sprite_index = s_quit_hover;
}