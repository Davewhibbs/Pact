



#region Neutral
	if state == states.neutral{
		//------------FUNCTIONALITY
		// Get input
		getInput();
		
		// Move freely
		neutralMovement();
		
		//------------STATE SWITCHES
		// Dodge
		if input_dodge
		{
			if(dodges > 0){
				if alarm[0] <= 0{
					dodges--
					alarm[0] = dodge_timer;
					state = states.dodge;
				}
			}
		}
		
		// Hurt
		
		// Heal
		
		// Attack
		
		
	}


#endregion

#region Attack
	else if state == states.attack{
		//------------FUNCTIONALITY
		
		
		//------------STATE SWITCHES
		
		
		//------------SPRITE
		
	
	}
#endregion

#region Healing
	else if state == states.healing{
		//------------FUNCTIONALITY
		
		
		//------------STATE SWITCHES
		
		
		//------------SPRITE
		
	
	
	}
#endregion

#region Hurt
	else if state == states.hurt{
		//------------FUNCTIONALITY
		
		
		//------------STATE SWITCHES
		
		
		//------------SPRITE
		
	
	
	}
#endregion

#region Stun
	else if state == states.stun{
		//------------FUNCTIONALITY
		
		
		//------------STATE SWITCHES
		
		
		//------------SPRITE
		
	
	
	}
#endregion

#region Dodge
	else if state == states.dodge{
		//------------FUNCTIONALITY
		dodgeMovement();
		
		//------------STATE SWITCHES
		if alarm[0] <= 10{
			state = states.neutral;
		}
		
		//------------SPRITE
		action = DODGE;
	}
#endregion

#region Dying
	else if state == states.death{
		//------------FUNCTIONALITY
		
		
		//------------STATE SWITCHES
		
		
		//------------SPRITE
		
	
	
	}
#endregion

#region Evolve
	else if state == states.evolve{
		//------------FUNCTIONALITY
		
		
		//------------STATE SWITCHES
		
		
		//------------SPRITE
		
	}
#endregion

//------------WALL COLLISION
wallCollision();

//------------APPLY MOVEMENT
applyMovement();

sprite_index = Sprite[location, action];	// Update the sprite after all calculations