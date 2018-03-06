ID = 6;
velocity = [0,0];
dir = 1;
accel = 3;
spd = 5;
range = 64;
damage = 25;
fleeSpd = 10;
afraid_of_heights = false;
hp = 100;

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