/// TransformUp()

// Change the sprites and stats of the player

// SPRITES
Sprite[GROUND, IDLE] = s_deer_idle;
Sprite[GROUND, MOVE] = s_deer_walk;
Sprite[AIR, ATTACK] = s_deer_attack;
Sprite[GROUND, ATTACK] = s_deer_attack;

// Remove Soul Frags
soulFrags = 0;

// set Transformed property
transformed = true;