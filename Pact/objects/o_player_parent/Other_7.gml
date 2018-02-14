// Some states change at the end of animations

switch(state)
{	
	case states.attack:
		// At the end of an attack animation, if it is a combo attack, increment the combo sequence
		alarm[2] = combo_timer;
		sequenceCount++;
		if (sequenceCount >= 3)
		{
			sequenceCount = 0;	// reset combo
		}
		
		// Return to neutral at the end of the animation
		attacked = false;
		state = states.neutral;
}