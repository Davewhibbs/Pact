// Set damage of attack and timer for hitbox creation

// Start countdown to hitbox creation
alarm[4] = hitbox_creation_timer; // for now all attacks create hitboxes at the same time

#region Ground Attacks
if (location == GROUND) {
	switch (attack_dir) {
		case NODIR:
				
			break;
			
		case RIGHT:
			
			break;
			
		case LEFT:
			
			break;
			
		case UP:
			
			break;
			
		case DOWN:
			
			break;	
	}
}
#endregion

#region Aerial Attacks
else if (location == AIR) {
	switch (attack_dir) {
		case NODIR:
		
			break;
			
		case RIGHT:
		
			break;
			
		case LEFT:
		
			break;
			
		case UP:
		
			break;
			
		case DOWN:
		
			break;	
	}
}
#endregion

