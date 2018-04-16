///@param player_count
///@param player_array

var player_count = argument0;
var players = argument1;

// loop through every player
for(var i = 0; i < player_count; i++){
	// check if they're larger or smaller than the current mins and maxes
	
	// Max Length
	if(players[i].x > maxWidth){
		maxWidth = players[i].x;
	}
	// Min length
	if(players[i].x < minWidth){
		minWidth = players[i].x;
	}
	
	// Max Height
	if (players[i].y > maxHeight){
		maxHeight = players[i].y;
	}
	// Min height
	if (players[i].y > minHeight){
		minHeight = players[i].y;
	}
}