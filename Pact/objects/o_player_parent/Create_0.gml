// Controller ID
ID = 0;

// BASIC MOVEMENT VARIABLES
dir = 1;				// Direction player is facing
velocity = [0,0];		// Vector of movement for the current frame
fall_speed = 8;			// Standard speed downward
fast_fall_speed = 25;	// Speed downward when holding down on the left stick
max_speed = 8;			// Clamped maximum horizontal speed
acceleration = 1;		// Change in speed from moving
jump_height = -10;		// Vertical speed of jumping

// SPECIAL GAME VARIABLES
hp = 100;
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



sequenceCount = 0;	//Combo counter

// Attacking
attack_offset = 32;
attack_timer = 10;
combo_timer = 30;
alarm[1] = 0;
alarm[2] = 0;
combo[0] = s_player_combo0;
combo[1] = s_player_combo1;
combo[2] = s_player_combo2;

// Healing
alarm[3] = 0;
heal_timer = 60;
heal_amount = 15;


// 2D Sprite array --- Sprites are determined by the player's locations and actions
location = GROUND;
action = IDLE;

Sprite[GROUND, IDLE]	= s_player_idle_test;
Sprite[GROUND, MOVE]	= s_player_run;
Sprite[GROUND, ATTACK]	= s_player_combo0;
Sprite[AIR, ATTACK]	= s_player_combo0;
Sprite[GROUND, JUMP]	= s_player_jump;
Sprite[AIR,	JUMP]		= s_player_jump;
Sprite[AIR, FALL]		= s_player_fall;
Sprite[GROUND, DODGE]	= s_player_dodge;
Sprite[AIR, DODGE]	= s_player_dodge;
Sprite[GROUND, HEAL] =	s_player_heal;


// Sprites used


// State machine
enum states {
	neutral,
	attack,
	evolve,
	healing,
	dodge,
	hurt,
	stun,
	death,
	spawn
}
state = states.neutral;