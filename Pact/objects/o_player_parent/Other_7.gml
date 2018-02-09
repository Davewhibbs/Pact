// Some states change at the end of animations

switch(state)
{	
	case states.attack:
		alarm[2] = combo_timer;
		sequenceCount++;
		if (sequenceCount >= 3)
		{
			sequenceCount = 0;	// reset combo
		}
		
		state = states.neutral;
		
		// Determine if we are in the air or not
		if location == AIR
		{
			CreateHitBox(x + attack_offset * dir, y, 1, 1, ID);
		}
		else
		{
			CreateHitBox(x + attack_offset * dir, y, 1, 1, ID);
		}
}