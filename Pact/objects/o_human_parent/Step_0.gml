#region Wander State
if (state == human_states.wander){
	// BEHAVIOR
	// Move left and right, turning at walls
	velocity[h] = Approach(velocity[h], spd * dir, accel);
	
	// Move down based on gravity
	velocity[v] = Approach(velocity[v], 8, grav);
	
	// WALL COLLISION
	// Horizontal
	if(place_meeting(x + velocity[h], y, o_wall)){
		repeat(abs(velocity[h])){
			if(!place_meeting(x + sign(velocity[h]), y, o_wall)){
				x += sign(velocity[h]);	
			} else {
				break;
			}
		}
		// turn around at a wall
		velocity[@ h] = 0;
		dir *= -1;
	}
	
	// Vertical
	if(place_meeting(x, y + velocity[v], o_wall)){
		repeat(abs(velocity[v])){
			if(!place_meeting(x, y + sign(velocity[v]), o_wall)){
				y += sign(velocity[v]);	
			} else {
				break;
			}
		}
		velocity[@ v] = 0;
	}

	
	// TRANSITION TRIGGERS
	
	// SPRITE
	sprite_index = s_player_idle;
}
#endregion

#region Attack State
else if (state == human_states.attack){
	// BEHAVIOR
	// wind up attack
	
	// Throw attack
	
	// Wind down attack
	
	// TRANSITION TRIGGERS
	// return to wander at end of attack or if hit
	
	// SPRITE
	
}
#endregion

#region Block State
else if(state == human_states.block){
	// BEHAVIOR
	
	// TRANSITION TRIGGERS
	
	// SPRITE
	
}
#endregion

#region Flee State
else if(state == human_states.flee){
	// BEHAVIOR
	
	// TRANSITION TRIGGERS
	
	// SPRITE
	
}
#endregion

#region Hurt State
else if(state == human_states.hurt){
	// BEHAVIOR
	// Wait until stun timer is over, then switch to wander
	
	// TRANSITION TRIGGERS
	if (alarm[5] <= 0){
		state = human_states.wander;
	}
	
	// SPRITE
	sprite_index = s_player_hurt;
}
#endregion

#region Death State
else if(state == human_states.death){
	// BEHAVIOR
	// Spawn a soul fragment
	instance_create_layer(x, y, "Instances", o_soulFragment);
	
	// Create death object
	
	// Destroy self
	instance_destroy();
}
#endregion

ApplyMovement();
image_xscale = dir;