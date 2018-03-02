// LEFT/RIGHT GROUND ATTACK
// medium speed, lunge, step forward

// Attack specific movement

// Once the hitbox creation timer is over, create the hitbox at the specified location
if (alarm[4] <=0) {
	
	CreateHitBox(x + attack_xOffset * dir, y - attack_yOffset, 2, damage, 20, 20, ID);
	
	// Increment combo
	//Sprite[@ GROUND, ATTACK] = combo[sequenceCount];
	
	// set attacked to true
	attacked = true;
}

