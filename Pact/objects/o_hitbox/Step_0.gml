/// @description Insert description here
// You can write your code in this editor
if(setup == 0){
	SetHitBoxAlarm();
	setup++;
}

x += global.player_array[ID].velocity[h];
y += global.player_array[ID].velocity[v];

if alarm[0] <= 0 {
	instance_destroy();
}