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
Sprite[GROUND, TRANSFORM] = s_deer_transform;
Sprite[AIR, TRANSFORM] = s_deer_transform;


max_speed = 8;
jump_height = -10;
damage = 25;

projectile_spawn_timer = room_speed / 20 * 15;

// Reset Attack offsets
// NeutralGround
attack_xOffset[GROUND, NODIR] = 32;	
attack_yOffset[GROUND, NODIR] = 32;

// LeftRightGround
attack_xOffset[GROUND, LEFT] = 32;	
attack_yOffset[GROUND, LEFT] = 32;
attack_xOffset[GROUND, RIGHT] = 32;	
attack_yOffset[GROUND, RIGHT] = 32;

// set Transformed property
transformed = false;