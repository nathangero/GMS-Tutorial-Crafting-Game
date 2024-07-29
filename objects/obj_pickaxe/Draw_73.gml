/// @description 

// Draw the selector
if (instance_exists(selector_instance)) {
	with (selector_instance) {
		// Draw selector in all 4 corners of the selected object
		draw_sprite_ext(spr_selector, other.selector_frame, bbox_left, bbox_top, 1, 1, 0, -1, 1);	
		draw_sprite_ext(spr_selector, other.selector_frame, bbox_right, bbox_top, 1, 1, -90, -1, 1);
		draw_sprite_ext(spr_selector, other.selector_frame, bbox_left, bbox_bottom, 1, 1, 90, -1, 1);
		draw_sprite_ext(spr_selector, other.selector_frame, bbox_right, bbox_bottom, 1, 1, 180, -1, 1);
	}
	
	// Reset selector instance
	selector_instance = noone;
}
