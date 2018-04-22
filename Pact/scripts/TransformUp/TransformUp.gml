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

max_speed = 10;
jump_height = -12;
hp += 25;
if(hp <= 0) hp = 0;

damage = 25;

// Attack Offsets
// NeutralGround
attack_xOffset[GROUND, NODIR] = 40;	
attack_yOffset[GROUND, NODIR] = 32;

// LeftRightGround
attack_xOffset[GROUND, LEFT] = 64;	
attack_xOffset[GROUND, RIGHT] = 64;	

// Remove Soul Frags
soulFrags = 0;

// set Transformed property
transformed = true;