



#region Neutral
	if state == states.neutral{
		//------------FUNCTIONALITY
		// Get input
		GetInput();
		
		// Move freely
		NeutralMovement();
		
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
		
		// Transform
		if soulFrags == max_soulFrags {
			
			// Transformation script
		}
		
		// Heal
		if soulFrags >= 1 {
			if location == GROUND {
				if input_heal {
					image_index = 0;
					alarm[3] = heal_timer;
					state = states.healing
				}
			}
		}
		
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
		//Movement
		GetInput();
		NeutralMovement();
		
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
		GetInput();
		//reset speed
		velocity = [0,0];
		
		
		//------------STATE SWITCHES
		// if no longer holding down button, return to neutral state
		if input_heal == false {
			state = states.neutral;	
		}
		
		// if the timer is over, heal, decrement soulFrags then return to neutral state
		if alarm[3] <= 0 {
			hp += heal_amount;
			soulFrags--;
			state = states.neutral;
		}
		
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
		
		//------------SPRITE
		action = HEAL;
	
	
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
		DodgeMovement();
		
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
WallCollision();

//------------APPLY MOVEMENT
ApplyMovement();

sprite_index = Sprite[location, action];	// Update the sprite after all calculations