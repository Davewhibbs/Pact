/// @description Switch to hurt state

// Can only be hurt in certain states
if (state == states.neutral || state == states.healing || state == states.attack || state == states.hurt)
{
	// only get hurt if the hitbox does not belong to your own attacks
	if (other.ID != ID)
	{
		image_index = 0;							// Reset animation
		action = HURT;								// Set sprite to HURT
		alarm[5] = stun_timer;						// Set stun timer		(Change depending on hitbox variable)
		hp -= other.damage;							// take damage
		if (hp <= 0) {
			velocity = [0,0]
			state = states.death;			// Switch to death state if hp < 0
			hp = 0;							// never show hp below 0
			image_index = 0;
			death_anim = false;
			alarm[6] = respawn_timer;
		}
		else{
			velocity[h] = other.x_Force;				// Apply knockback force
			velocity[v] = other.y_Force;
			state = states.hurt;						// Switch to hurt state	
		}
	}
}


