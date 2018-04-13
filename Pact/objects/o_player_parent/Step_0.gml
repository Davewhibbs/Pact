



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
		
		// Hurt - handled in collision event
		
		// Transform
		if soulFrags == max_soulFrags {
			if input_transform{
				// Jump!
				Jump();
				
				// reset the animation frame
				image_index = 0;
				
				// set timers
				alarm[7] = transform_anim_timer;
				alarm[8] = transform_duration;
				transform_mid_timer = 20;
				// call transform script once
				TransformUp();
				
				state = states.evolve;
			}
		}
		
		// Transsform down
		if transformed == true {
			if alarm[8] <= 0{
				// Jump!
				Jump();
				image_index = 0;
				alarm[7] = transform_anim_timer;
				alarm[8] = transform_duration;
				transform_mid_timer = 20;
				TransformDown();
				state = states.evolve;
			}
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
				// Find Attack direction
				DetermineAttackDir();	
				
				// Set attack variables ONCE based on the specific attack
				SetAttackVariables();
				
				state = states.attack;
			}
		}
		
		// Alternate Attack	HADOUKEN
		if input_alt_attack {
			if soulFrags > 0{
				if alarm[1] <=0 {
					image_index = 0;
					alarm[1] = attack_timer;
					alarm[9] = projectile_spawn_timer;
					
					state = states.alt_attack;
				}
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
		
		// Execute Attack based on the attack_dir
		if (attacked == false){
			ExecuteAttack();
		}	
	
		
		
		
		
		
		//------------STATE SWITCHES
		// Neutral
		
		
		// Hurt
		
		//------------SPRITE
		action = ATTACK;
	
	}
#endregion

#region Alternate Attack - Projectile
	else if state == states.alt_attack{
		//------------FUNCTIONALITY
		
		// full control
		GetInput();
		NeutralMovement();
		
		
		//------------STATE SWITCHES
		if alarm[9] <= 0 {
			// create a projectile
			var proj = instance_create_layer(x + 32 * dir, y - 20, "Instances", o_projectile);
			proj.dir = dir;
			proj.ID = ID;
			soulFrags --;
			
			// switch to neutral
			state = states.neutral;
		}
		
		
		//------------SPRITE
		action = ATTACK2;
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
		// Move with no control
		HurtMovement();
		
		//------------STATE SWITCHES
		// Return to neutral after stun timer
		if (alarm[5] <= 0){
			state = states.neutral;
		}
		
		//------------SPRITE
		action = HURT;
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
		// stop animation once it finishes
		if death_anim == false {
			if image_index >= 9{
				image_speed = 0;
				death_anim = true;
				
				// spawn a soul frag
				instance_create_layer(x, y-32, "Instances", o_soulFragment);
				
				
				// move the body to the spawn point
				if (ID == 0) {
					x = spawn_0.x;
					y = spawn_0.y;
				}
				else if (ID == 1) {
					x = spawn_1.x;
					y = spawn_1.y;
				}
				else if (ID == 2) {
					x = spawn_2.x;
					y = spawn_2.y;
				}
				else if (ID == 3) {
					x = spawn_3.x;
					y = spawn_3.y;
				}
			}
		}
		
		//------------STATE SWITCHES
		// Respawn
		// after respawn timer, respawn at corresponding spawn point
		if alarm[6] <= 0 {
			// reset image_speed
			image_speed = anim_speed;
			
			// reset health 
			hp = max_hp;
			
			// reset souls
			soulFrags = 0;
			
			// switch to neutral state
			state = states.neutral;
		}
		
		//------------SPRITE
		action = DEATH;
	
	
	}
#endregion

#region Evolve
	else if state == states.evolve{
		//------------FUNCTIONALITY
		if transform_mid_timer >=0 {
			transform_mid_timer--;
			GetInput();
			NeutralMovement();
		}
		else{
			velocity=[0,0];
		}
		
		
		//------------STATE SWITCHES
		if alarm[7] <= 0 {
			state = states.neutral;
		}
		
		//------------SPRITE
		action = TRANSFORM;
	}
#endregion

//------------NEVER GO ABOVE MAX HEALTH
if(hp > max_hp){
	hp = max_hp;
}	

//------------WALL COLLISION
WallCollision();

//------------APPLY MOVEMENT
ApplyMovement();

sprite_index = Sprite[location, action];	// Update the sprite after all calculations