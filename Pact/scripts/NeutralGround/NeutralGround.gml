// NEUTRAL GROUND ATTACK
// fast, jab, combo, no movement

// Attack specific movement



// second timer for traqnsformed attack



// Once the hitbox creation timer is over, create the hitbox at the specified location
if (alarm[4] <=0) {
	
	// Directed hitbox
	CreateHitBox(x + attack_xOffset[location, attack_dir] * dir, y - attack_yOffset[location, attack_dir], 2, damage, 5 * dir, -5, ID);
	
	// hitbox on player
	CreateHitBox(x, y - 32, 2, damage, 5 * dir, -5, ID);
	
	// if transformed, also shoot a projectile
	if transformed{
		// create a projectile
		var proj = instance_create_layer(x + 32 * dir, y - 20, "Instances", o_projectile);
		proj.dir = dir;
		proj.ID = ID;
		proj.lifetime = room_speed * .2;
	}
	
	// Increment combo
	//Sprite[@ GROUND, ATTACK] = combo[sequenceCount];

		
	
	// set attacked to true
	attacked = true;
}


