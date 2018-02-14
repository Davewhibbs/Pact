// NEUTRAL GROUND ATTACK
// fast, jab, combo, no movement

// Attack specific movement

// Once the hitbox creation timer is over, create the hitbox at the specified location
if (alarm[4] <=0) {
	
	CreateHitBox(x + attack_xOffset[location, attack_dir] * dir, y - attack_yOffset[location, attack_dir], 2, damage, ID);
	
	// Increment combo
	//Sprite[@ GROUND, ATTACK] = combo[sequenceCount];
	
	// set attacked to true
	attacked = true;
}

