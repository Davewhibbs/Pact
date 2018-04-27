ID = 6;
velocity = [0,0];
dir = 1;
accel = 3;
spd = 1;
range = 200;
damage = 25;
fleeSpd = 10;
fall_speed = 8
afraid_of_heights = false;
hp = 26;
attack_timer = 7;
attack_speed = 3 * room_speed;
alarm[0] = 0;
alarm[1] = 0;

stun_timer =.2 * room_speed;
alarm[5] = 0;

enum human_states{
	wander,
	attack,
	block,
	flee,
	hurt,
	death
}
state = human_states.wander;