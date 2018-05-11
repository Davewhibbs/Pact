// Can only be hurt in certain states
if (state == human_states.wander || state == human_states.attack )
{
	// only get hurt if the hitbox does not belong to your own attacks
	if (other.ID != ID)
	{
		image_index = 0;							// Reset animation
		alarm[5] = stun_timer;						// Set stun timer		(Change depending on hitbox variable)
		hp -= other.damage;							// take damage
		if (hp < 0) {
			velocity[h] = 0;
			state = human_states.death;			// Switch to death state if hp < 0
			hp = 0;							// never show hp below 0
		}
		else{
			velocity[h] = other.x_Force;				// Apply knockback force
			velocity[v] = other.y_Force;
			state = human_states.hurt;						// Switch to hurt state	
		}
		
		// create hit effectr
		instance_create_layer(x, y, "Particles", o_hit_effect);
	}
}

