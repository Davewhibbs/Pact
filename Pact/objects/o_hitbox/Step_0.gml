/// @description Insert description here
// You can write your code in this editor
if(setup == 0){
	SetHitBoxAlarm();
	setup++;
}

if alarm[0] <= 0 {
	instance_destroy();
}