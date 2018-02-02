



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
					image_index = 0;		// Reset animation
					dodges--;				// If in the air, you can't dodge again
					alarm[0] = dodge_timer;
					state = states.dodge;
				}
			}
		}
		
		// Hurt
		
		// Heal
		
		// Attack
		if input_attack
		{
			if alarm[1] <= 0{
				image_index = 0;
				alarm[1] = attack_timer;
				
				state = states.attack;
			}
		}
		
	}


#endregion

#region Attack
	else if state == states.attack{
		//------------FUNCTIONALITY
		// reset movement
		//velocity = [0,0];
		
#region		// Determine direction of attack
		var attack_dir = 0;
		if x_input > 0 && abs(x_input) > abs(y_input)
		{
			attack_dir = 1;	//right
			
		}
		else if x_input < 0 && abs(x_input) > abs(y_input)
		{
			attack_dir = 2; //left
		}
		else if y_input < 0 && abs(y_input) > abs(x_input)
		{
			attack_dir = 3; //UP
		}
		else if y_input > 0 && abs(y_input) > abs(x_input)
		{
			attack_dir = 4; //down
		}
		else if x_input == 0 && y_input == 0
		{
			attack_dir = 0;
		}
#endregion		
		
		
		
		
		Sprite[@ GROUND, ATTACK] = combo[sequenceCount];
		
		//------------STATE SWITCHES
		
		
		//------------SPRITE
		action = ATTACK;
	
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