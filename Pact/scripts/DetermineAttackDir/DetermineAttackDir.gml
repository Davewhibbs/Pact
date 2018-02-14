// Determine direction of attack based on input
if x_input > 0 && abs(x_input) > abs(y_input)
		{
			attack_dir = RIGHT;
		}
		else if x_input < 0 && abs(x_input) > abs(y_input)
		{
			attack_dir = LEFT;
		}
		else if y_input < 0 && abs(y_input) > abs(x_input)
		{
			attack_dir = UP;
		}
		else if y_input > 0 && abs(y_input) > abs(x_input)
		{
			attack_dir = DOWN;
		}
		else if x_input == 0 && y_input == 0
		{
			attack_dir = NODIR;
		}