/// @description Switch to hurt state

// Can only be hurt in certain states
if (state == states.neutral || state == states.healing || state == states.attack || state == states.stun)
{
	// only get hurt if the hitbox does not belong to your own attacks
	if (other.ID != ID)
	{
		image_index = 0;		// Reset animation
		action = HURT;			// Set sprite to HURT
		alarm[5] = stun_timer;	// Set stun timer		(Change depending on hitbox variable)
		state = states.hurt;	// Switch to hurt state	
	}
}


