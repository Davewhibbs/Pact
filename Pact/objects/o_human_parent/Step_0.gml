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
	// Check if it's time to attack
	//if(alarm[1] <= 0){
	//	//check if a player is within range
	//	for(var i = 0; i < global.playerCount; i++){
	//		if global.player_array[i].x <= (x + range * dir){
	//			state = human_states.attack;
	//			alarm[0] = attack_timer;
	//			image_index = 0;
	//		}
	//	}
	//}
	
	// SPRITE
	sprite_index = s_human_walk_male;
}
#endregion

#region Attack State
else if (state == human_states.attack){
	// BEHAVIOR
	// stop moving
	velocity = [0,0];
	
	// check attack timer
	if alarm[0] <= 0{
		// create a projectile
		var bullet = instance_create_layer(x + 16*dir, y - 16, "Instances", o_bullet);
		bullet.dir = dir;
		
		// switch to move state
		state = human_states.wander;
		
		// reset attack speed timer
		alarm[1] = attack_speed;
	}
	
	// TRANSITION TRIGGERS
	// return to wander at end of attack or if hit
	
	// SPRITE
	sprite_index = s_human_shoot_male;
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
	
	// Accelerate only with gravity
	velocity[v] = Approach(velocity[v], fall_speed, grav);
	
	// Bounce off walls
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
	if (alarm[5] <= 0){
		state = human_states.wander;
	}
	
	// SPRITE
	sprite_index = s_human_hurt_male;
}
#endregion

#region Death State
else if(state == human_states.death){
	// BEHAVIOR
	// Spawn a soul fragment
	instance_create_layer(x, y - 32, "Instances", o_soulFragment);
	
	// Create death object
	
	// Destroy self
	instance_destroy();
}
#endregion

ApplyMovement();
image_xscale = dir;