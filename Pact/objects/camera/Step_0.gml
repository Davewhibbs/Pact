
//x = clamp(x, following.x - h_border, following.x + h_border);
//y = clamp(y, following.y - v_border, following.y + v_border);

// SMASH CAM
// reset camera position
xx = 0;
yy = 0;

// Find average location of all players
switch (game.playerCount){
	case 1:
		xx = global.player_array[0].x;
		yy = global.player_array[0].y;
		break;
	case 2:
		// add up the positions
		xx += global.player_array[0].x;
		yy += global.player_array[0].y;
		xx += global.player_array[1].x;
		yy += global.player_array[1].y;
		break;
	case 3:
		// add up the positions
		xx += global.player_array[0].x;
		yy += global.player_array[0].y;
		xx += global.player_array[1].x;
		yy += global.player_array[1].y;
		xx += global.player_array[2].x;
		yy += global.player_array[2].y;
		break;
	case 4:
		// add up the positions
		xx += global.player_array[0].x;
		yy += global.player_array[0].y;
		xx += global.player_array[1].x;
		yy += global.player_array[1].y;
		xx += global.player_array[2].x;
		yy += global.player_array[2].y;
		xx += global.player_array[3].x;
		yy += global.player_array[3].y;
		break;
}

xx /= game.playerCount;
yy /= game.playerCount;

x = xx;
y = yy;