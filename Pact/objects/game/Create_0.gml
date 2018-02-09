playerCount = 1;

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
for (var i = 1; i < 4; i++) {
	if (global.gp[i] == true) {
		playerCount++;
	}
}

//----------CREATE PLAYERS AT SPAWN LOCATIONS
