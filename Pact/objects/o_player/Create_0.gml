dir = 1;

velocity = [0,0];
max_fall_speed = 5;
max_speed = 8;
acceleration = 1;
spd = 3;
hp = 100;
frags = 0;
max_jumps = 3;
jumps = max_jumps;
jump_height = -10;

// Dodge variables
max_dodges = 1;
dodges = max_dodges;
dodge_timer = 20;
dodge_spd = 13;
alarm[0] = 0;

location = GROUND;
action = IDLE;
SequenceCount = 0;	//Combo counter
State = 0;

// Ground Combo sprite array
GroundCombo[0] = s_player_combo0;
GroundCombo[1] = s_player_combo1;
GroundCombo[2] = s_player_combo2;

// Aerial Combo sprite array


// 2D Sprite array
Sprite[GROUND, IDLE]	= s_player_idle;
Sprite[GROUND, MOVE]	= s_player_run;
Sprite[GROUND, ATTACK]	= s_player_combo0;
Sprite[GROUND, JUMP]	= s_player_jump;
Sprite[AIR,	JUMP]		= s_player_jump;
Sprite[AIR, FALL]		= s_player_fall;
Sprite[GROUND, DODGE]	= s_player_dodge;
Sprite[AIR, DODGE]	= s_player_dodge;

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