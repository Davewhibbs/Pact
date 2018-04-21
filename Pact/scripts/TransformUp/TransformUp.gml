/// TransformUp()

// Change the sprites and stats of the player

// SPRITES
Sprite[GROUND, IDLE] = s_deer_idle;
Sprite[GROUND, MOVE] = s_deer_walk;
Sprite[AIR, ATTACK] = s_deer_attack;
Sprite[GROUND, ATTACK] = s_deer_attack;
Sprite[AIR, JUMP] = s_deer_jump;
Sprite[AIR, FALL] = s_deer_jump;
Sprite[GROUND, ATTACK2] = s_deer_attack_special;
Sprite[AIR, ATTACK2] = s_deer_attack_special;
Sprite[AIR, DODGE] = s_deer_dodge;
Sprite[GROUND, DODGE] = s_deer_dodge;


// Remove Soul Frags
soulFrags = 0;

// set Transformed property
transformed = true;