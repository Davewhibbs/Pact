
draw_self();

#region Flash Shader
// --------------Set up FLASH shader
if (flash > 0){
	gpu_set_blendmode(bm_add);
	
	// decrement clor values
	red -= flash_speed;
	green -= flash_speed;
	blue -= flash_speed;
	alpha -= flash_speed;
	
	flash -= flash_speed;
	
	// set the shader with the current variables
	shader_set(shd_flash);
	
	// Set up uniform color variables
	shd_red = shader_get_uniform(shd_flash, "red");
	shader_set_uniform_f(shd_red, flash);
	shd_green = shader_get_uniform(shd_flash, "green");
	shader_set_uniform_f(shd_green, flash);
	shd_blue = shader_get_uniform(shd_flash, "blue");
	shader_set_uniform_f(shd_blue, flash);
	shd_alpha = shader_get_uniform(shd_flash, "alpha");
	shader_set_uniform_f(shd_alpha, flash);
	
	

	// Draw the character sprite
	draw_self();

	// Reset shader
	shader_reset();
	gpu_set_blendmode(bm_normal);
}

#endregion

// flashing when close to transformation


#region Draw soul fragments around the player
// Only draw them when the player is alive
if state != states.death{
switch (soulFrags) {
	case 0: break;
	
	case 1: 
		// First soul frag appears above head
		draw_sprite(s_soulFragment, image_index, x, y-75);
		break;
		
	case 2:
		// First soul frag appears above head
		draw_sprite(s_soulFragment, image_index, x, y-75);
		
		// Second soul frag appears to left
		draw_sprite(s_soulFragment, image_index, x-15, y - 75);
		break;
		
	case 3:
		// First soul frag appears above head
		draw_sprite(s_soulFragment, image_index, x, y-75);
		
		// Second soul frag appears to left
		draw_sprite(s_soulFragment, image_index, x-15, y-75);
		
		// Third soul frag appears to left
		draw_sprite(s_soulFragment, image_index, x+15, y-75);
}
}
#endregion


// Debug bounding box
//draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);


