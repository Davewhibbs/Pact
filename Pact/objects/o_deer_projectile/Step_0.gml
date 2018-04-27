/// @description Insert description here
// You can write your code in this editor
image_xscale = dir;

x += spd * dir;

if start == true{
	alarm[0] = lifetime;
	start = false;
}

if alarm[0] <= 0{
	instance_destroy();
}