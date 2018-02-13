playerCount = 0;


//----------DETERMINE WHICH PLAYERS ARE PLUGGED IN
var gamepad_slots = gamepad_get_device_count();
for (var i = 0; i < gamepad_slots; i++) {
	if gamepad_is_connected(i) {
		global.gp[i] = true;
	}
	else {
		global.gp[i] = false;
	}
}


//----------DETERMINE NUMBER OF PLAYERS (up to 4)
for (var i = 0; i < 4; i++) {
	if (global.gp[i] == true) {
		playerCount++;
	}
}

// create array of players
global.player_array = [playerCount];

//----------CREATE PLAYERS AT SPAWN LOCATIONS
for (var i = 0; i < playerCount; i++) {
	CreatePlayer(i);
}

//----------CREATE CAMERA (so it doesn't run any code before this)
instance_create_layer(0,0,"Instances", camera);

