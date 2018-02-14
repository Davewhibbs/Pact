//--------DETERMINE WHICH ATTACK TO USE BASED ON DIRECTION AND LOCATION
// perform the function of the attack at the givin location

NeutralGround();

/*
#region Ground Attacks
if (location == GROUND) {
	switch (attack_dir) {
		case NODIR:
			NeutralGround();
			break;
			
		case RIGHT:
			LeftRightGround();
			break;
			
		case LEFT:
			LeftRightGround();
			break;
			
		case UP:
			UpGround();
			break;
			
		case DOWN:
			DownGround();
			break;	
	}
}
#endregion

#region Aerial Attacks
else if (location == AIR) {
	switch (attack_dir) {
		case NODIR:
			NeutralAir();
			break;
			
		case RIGHT:
			LeftRightAir();
			break;
			
		case LEFT:
			LeftRightAir();
			break;
			
		case UP:
			UpAir();
			break;
			
		case DOWN:
			DownAir();
			break;	
	}
}
#endregion

else
{
	show_debug_message("Where the hell are you?");
}