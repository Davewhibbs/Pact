// Controller ID
ID = 0;

// BASIC MOVEMENT VARIABLES
dir = 1;				// Direction player is facing (left = -1, right = 1)
velocity = [0,0];		// Vector of movement for the current frame
fall_speed = 8;			// Standard speed downward
fast_fall_speed = 25;	// Speed downward when holding down on the left stick
max_speed = 8;			// Clamped maximum horizontal speed
acceleration = 1;		// Change in speed from moving
jump_height = -10;		// Vertical speed of jumping

// SHADER VARIABLES
red = 0;
green = 0;
blue = 0;
alpha = 0;
flash_speed = 0.05;
flash = 0;

// SPECIAL GAME VARIABLES
max_hp = 100;
hp = max_hp;
draw_hp = max_hp;
max_jumps = 3;
jumps = max_jumps;
soulFrags = 0;
max_soulFrags = 3;


// DODGE VARIABLES
max_dodges = 1;
dodges = max_dodges;
dodge_timer = 20;
dodge_speed = 10;
alarm[0] = 0;

// PROJECTILE ATTACK VARIABLES
projectile_spawn_timer = room_speed / 20 * 15;
alarm[9] = 0;


// ATTACKING VARIABLES
sequenceCount = 0;	//Combo counter
attacked = false;
attack_timer = 10;
combo_timer = 30;
hitbox_creation_timer = .1 * room_speed; // half a second
attack_dir = 0;
damage = 10;
alarm[1] = 0;
alarm[2] = 0;
combo[0] = s_werewolf_attack;
combo[1] = s_werewolf_attack;
combo[2] = s_werewolf_attack;

#region Attack hitboxes offsets arrays
attack_xOffset = [0, 0]; // Holds info on the offsets of each attack
attack_yOffset = [0, 0]; // Holds info on the offsets of each attack

// NeutralGround
attack_xOffset[GROUND, NODIR] = 32;	
attack_yOffset[GROUND, NODIR] = 32;

// LeftRightGround
attack_xOffset[GROUND, LEFT] = 32;	
attack_yOffset[GROUND, LEFT] = 32;
attack_xOffset[GROUND, RIGHT] = 32;	
attack_yOffset[GROUND, RIGHT] = 32;

// UpGround
attack_xOffset[GROUND, UP] = 0;	
attack_yOffset[GROUND, UP] = 64;

// DownGround
attack_xOffset[GROUND, DOWN] = 0;	
attack_yOffset[GROUND, DOWN] = 0;

// NeutralAir
attack_xOffset[AIR, NODIR] = 32;	
attack_yOffset[AIR, NODIR] = 32;

// LeftRightAir
attack_xOffset[AIR, LEFT] = 32;	
attack_yOffset[AIR, LEFT] = 32;
attack_xOffset[AIR, RIGHT] = 32;	
attack_yOffset[AIR, RIGHT] = 32;

// UpAir
attack_xOffset[AIR, UP] = 0;	
attack_yOffset[AIR, UP] = 64;

// DownAir
attack_xOffset[AIR, DOWN] = 0;	
attack_yOffset[AIR, DOWN] = -32;
#endregion





// HURT/STUN VARIABLES
stun_timer = room_speed * .2;
alarm[5] = 0;


// HEALING VARIABLES
alarm[3] = 0;
heal_timer = 60;
heal_amount = 15;

// TRANSFORMATION VARIABLES
alarm[7] = 0;
alarm[8] = 0;
transform_anim_timer = room_speed / 4 * 15 / 4;
transform_duration	 = room_speed * 10;
transformed = false;
transform_mid_timer = room_speed/4*6;


// Dying/Respawning
respawn_timer = 4 * room_speed;
alarm[6] = 0;
death_anim = false;
anim_speed = image_speed;


// 2D Sprite array --- Sprites are determined by the player's locations and actions
location = GROUND;
action = IDLE;

Sprite[GROUND, IDLE]	= s_cultist_idle;
Sprite[GROUND, MOVE]	= s_cultist_run;
Sprite[GROUND, ATTACK]	= s_cultist_attack;
Sprite[AIR, ATTACK]		= s_cultist_attack;
Sprite[GROUND, ATTACK2]	= s_cultist_shoot;
Sprite[AIR, ATTACK2]	= s_cultist_shoot;
Sprite[GROUND, JUMP]	= s_cultist_jump;
Sprite[AIR,	JUMP]		= s_cultist_jump;
Sprite[AIR, FALL]		= s_cultist_jump;
Sprite[GROUND, DODGE]	= s_cultist_dodge;
Sprite[AIR, DODGE]		= s_cultist_dodge;
Sprite[GROUND, HEAL]	= s_cultist_heal;
Sprite[GROUND, HURT]	= s_cultist_hurt;
Sprite[AIR, HURT]		= s_cultist_hurt;
Sprite[GROUND, DEATH]	= s_cultist_death_2;
Sprite[AIR, DEATH]		= s_cultist_death;
Sprite[AIR, TRANSFORM]	= s_cultist_transform;
Sprite[GROUND, TRANSFORM] = s_cultist_transform;




// State machine
enum states {
	neutral,
	attack,
	alt_attack,
	evolve,
	healing,
	dodge,
	hurt,
	stun,
	death,
	spawn
}
state = states.neutral;