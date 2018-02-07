dir = 1;

velocity = [0,0];
fall_speed = 8;
fast_fall_speed = 25;
max_speed = 8;
acceleration = 1;
spd = 3;
hp = 100;
soulFrags = 0;
max_soulFrags = 3;
max_jumps = 3;
jumps = max_jumps;
jump_height = -10;

// Dodge variables
max_dodges = 1;
dodges = max_dodges;
dodge_timer = 20;
dodge_speed = 10;
alarm[0] = 0;

location = GROUND;
action = IDLE;
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


// 2D Sprite array
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