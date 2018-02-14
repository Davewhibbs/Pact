//--------DETERMINE WHICH ATTACK TO USE BASED ON DIRECTION AND LOCATION
// perform the function of the attack at the givin location

#region Ground Attacks
if (location == GROUND) {
	switch (attack_dir) {
		case NODIR:
			NeutralGround();
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

else
{
	show_debug_message("Where the hell are you?");
}