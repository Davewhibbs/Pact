// Some states change at the end of animations

switch(state)
{
	case states.neutral:
		break;
		
	case states.attack:
		sequenceCount++;
		if (sequenceCount >= 3)
		{
			sequenceCount = 0;	// reset combo
		}
		state = states.neutral;
}