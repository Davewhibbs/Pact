/// @description Insert description here
// You can write your code in this editor

if !instance_exists(o_human_parent){
	audio_stop_sound(s_music);
	room_goto_next();
}