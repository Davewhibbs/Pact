
//----------UPDATE INPUT
// You can always use keyboard, too
input_left			= keyboard_check(vk_left);
input_right			= keyboard_check(vk_right);
input_up			= keyboard_check(vk_up);
input_down			= keyboard_check(vk_down);
input_attack		= keyboard_check(ord("C"));
input_alt_attack	= keyboard_check(ord("X"));
input_jump			= keyboard_check_pressed(vk_space);
input_dodge			= keyboard_check_pressed(vk_shift);
input_heal			= keyboard_check(ord("Z"));
input_transform		= keyboard_check_pressed(ord("V"));

x_input = input_right - input_left;
y_input = input_down - input_up;


// Check if controller is connected and overwrite inputs if it is
if gamepad_is_connected(ID)
{
	// use controller for input
	// SET DEADZONE
	gamepad_set_axis_deadzone(ID, .2);
	
	// Check left stick axes for direction
	var haxis = gamepad_axis_value(ID, gp_axislh);
	var vaxis = gamepad_axis_value(ID, gp_axislv);
	
	input_attack		= gamepad_button_check_pressed(ID, gp_face3);
	input_alt_attack	= gamepad_button_check_pressed(ID, gp_face4);
	input_jump			= gamepad_button_check_pressed(ID, gp_face1);
	input_dodge			= gamepad_button_check_pressed(ID, gp_shoulderrb);
	input_transform		= gamepad_button_check_pressed(ID, gp_shoulderlb);
	input_heal			= gamepad_button_check(ID, gp_face2);
	
	
	x_input = haxis;
	y_input = vaxis;
	
}

// Change direction
if x_input > 0
{
	dir = 1;
}
else if (x_input < 0)
{
	dir = -1;
}

image_xscale = dir;



