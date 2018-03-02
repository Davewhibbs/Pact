
// WALL COLLISION
// Horizontal
if(place_meeting(x + velocity[h], y, o_wall)){
	repeat(abs(velocity[h])){
		if(!place_meeting(x + sign(velocity[h]), y, o_wall)){
			x += sign(velocity[h]);	
		} else {
			break;
		}
	}
	velocity[@ h] = 0;
}

// Vertical
if(place_meeting(x, y + velocity[v], o_wall)){
	repeat(abs(velocity[v])){
		if(!place_meeting(x, y + sign(velocity[v]), o_wall)){
			y += sign(velocity[v]);	
		} else {
			break;
		}
	}
	velocity[@ v] = 0;
}
