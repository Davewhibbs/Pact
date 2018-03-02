// Draw the character sprite
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);

#region Draw soul fragments around the player
switch (soulFrags) {
	case 0: break;
	
	case 1: 
		// First soul frag appears above head
		draw_sprite(s_soul, image_index, x, y-64);
		break;
		
	case 2:
		// First soul frag appears above head
		draw_sprite(s_soul, image_index, x, y-64);
		
		// Second soul frag appears to left
		draw_sprite(s_soul, image_index, x-25, y - 32);
		break;
		
	case 3:
		// First soul frag appears above head
		draw_sprite(s_soul, image_index, x, y-64);
		
		// Second soul frag appears to left
		draw_sprite(s_soul, image_index, x-25, y-32);
		
		// Third soul frag appears to left
		draw_sprite(s_soul, image_index, x+25, y-32);
}
#endregion


// Debug bounding box
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
