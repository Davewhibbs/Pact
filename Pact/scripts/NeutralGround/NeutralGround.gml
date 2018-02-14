// NEUTRAL GROUND ATTACK
// jab, combo

// Attack specific movement

// Once the hitbox creation timer is over, create the hitbox at the specified location
if (alarm[4] <=0) {
	
	CreateHitBox(x + attack_xOffset * dir, y - attack_yOffset, 2, damage, ID);
	show_debug_message("Neutral Attack");
	
	// Increment combo
	//Sprite[@ GROUND, ATTACK] = combo[sequenceCount];
	
	// set attacked to true
	attacked = true;
}

