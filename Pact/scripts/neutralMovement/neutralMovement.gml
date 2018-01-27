
// INTENDED MOVEMENT
// Stopping
if x_input == 0 {
	velocity[h] = Approach(velocity[h], 0, acceleration);
}
// Accelerating
else{
	velocity[h] = Approach(velocity[h], max_speed * dir, acceleration);
}




// Check if we're NOT on the floor
if !place_meeting(x, y+1, o_wall)
{
	// Fast fall
	if y_input > 0 {
		velocity[v] = Approach(velocity[v], fast_fall_speed, acceleration);
	}
	// Slow fall
	else {
		velocity[v] = Approach(velocity[v], fall_speed, grav);
	}
	
	location = AIR;
	
	// Change to fall if our vertical velocity is greater than 0
	if velocity[v] > 0{
		action = FALL;
	}
}
// If on the floor; reset jumps/dodges and use ground sprites
else
{
	dodges = max_dodges;
	jumps = max_jumps;
	location = GROUND;
	
	// Change the action depending on if you're moving or not
	if velocity[h] == 0
	{
		action = IDLE;
	}
	else
	{
		action = MOVE;
	}
}


// Jumping
if input_jump
{
	jump();
}




