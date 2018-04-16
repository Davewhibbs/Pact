// Smooth Camera

//x = clamp(x, following.x - h_border, following.x + h_border);
//y = clamp(y, following.y - v_border, following.y + v_border);

// SMASH CAM
// reset camera position
xx = 0;
yy = 0;

// Reset size variables 
maxHeight = 0;
minHeight = 0;
maxWidth = 0;
minWidth = 0;

// Find average location of all players
switch (global.playerCount){
	case 1:
		// find midpoint
		xx = global.player_array[0].x;
		yy = global.player_array[0].y;
		
		// Calculate the camera size
		CalculateCameraSize(global.playerCount, global.player_array);
		break;
	case 2:
		// add up the positions
		xx += global.player_array[0].x;
		yy += global.player_array[0].y;
		xx += global.player_array[1].x;
		yy += global.player_array[1].y;
		
		// Calculate the camera size
		CalculateCameraSize(global.playerCount, global.player_array);
		break;
	case 3:
		// add up the positions
		xx += global.player_array[0].x;
		yy += global.player_array[0].y;
		xx += global.player_array[1].x;
		yy += global.player_array[1].y;
		xx += global.player_array[2].x;
		yy += global.player_array[2].y;
		
		// Calculate the camera size
		CalculateCameraSize(global.playerCount, global.player_array);
		
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
		
		// Calculate the camera size
		CalculateCameraSize(global.playerCount, global.player_array);
		break;
}

// Set the size of the camera
viewWidth = maxWidth - minWidth;
viewHeight = maxHeight - minHeight;
camera_set_view_size(view_camera[0], viewWidth, viewHeight);

// Set the location of the camera
xx /= global.playerCount;
yy /= global.playerCount;

xx -= maxWinWidth/2;
yy -= maxWinHeight/2;

x = xx;
y = yy;
camera_set_view_pos(view_camera[0], xx, yy);
