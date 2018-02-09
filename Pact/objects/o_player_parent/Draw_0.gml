// Draw the character sprite
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);

#region Draw soul fragments around the player
switch (soulFrags) {
	case 0: break;
	
	case 1: 
		// First soul frag appears above head
		draw_sprite(s_soul, image_index, x, y-25);
		break;
		
	case 2:
		// First soul frag appears above head
		draw_sprite(s_soul, image_index, x, y-25);
		
		// Second soul frag appears to left
		draw_sprite(s_soul, image_index, x-25, y);
		break;
		
	case 3:
		// First soul frag appears above head
		draw_sprite(s_soul, image_index, x, y-25);
		
		// Second soul frag appears to left
		draw_sprite(s_soul, image_index, x-25, y);
		
		// Third soul frag appears to left
		draw_sprite(s_soul, image_index, x+25, y);
}
#endregion