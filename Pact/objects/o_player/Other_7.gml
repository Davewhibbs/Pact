// Some states change at the end of animations

switch(state)
{
	case states.neutral:
		break;
		
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
			instance_create_layer(x + attack_offset * dir, y, "Instances", o_hitbox);
		}
		else
		{
			instance_create_layer(x + attack_offset * dir, y, "Instances", o_hitbox);
		}
}