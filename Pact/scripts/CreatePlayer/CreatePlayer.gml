/// CreatePlayer(ID)
/// @param ID

// Create a player with a given ID
show_debug_message("Created player with ID " + string(argument0));
var player = instance_create_layer(0, 0, "Instances", o_player_parent);
player.ID = argument0;
global.player_array[argument0] = player; // add player to the player array

// Move player to spawn point
switch player.ID{
	case 0: 
		player.x = spawn_0.x;
		player.y = spawn_0.y;
		break;
	case 1: 
		player.x = spawn_1.x;
		player.y = spawn_1.y;
		break;
	case 2: 
		player.x = spawn_2.x;
		player.y = spawn_2.y;
		break;
	case 3: 
		player.x = spawn_3.x;
		player.y = spawn_3.y;
		break;
}