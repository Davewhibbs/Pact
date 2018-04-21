/// TransformDown()

// Change the sprites and stats of the player

// SPRITES
Sprite[GROUND, IDLE] = s_cultist_idle;
Sprite[GROUND, MOVE] = s_cultist_run;
Sprite[AIR, ATTACK] = s_cultist_attack;
Sprite[GROUND, ATTACK] = s_cultist_attack;
Sprite[AIR, JUMP] = s_cultist_jump;
Sprite[AIR, FALL] = s_cultist_jump;
Sprite[GROUND, ATTACK2] = s_cultist_shoot;
Sprite[AIR, ATTACK2] = s_cultist_shoot;
Sprite[AIR, DODGE] = s_cultist_dodge;
Sprite[GROUND, DODGE] = s_cultist_dodge;


// set Transformed property
transformed = false;