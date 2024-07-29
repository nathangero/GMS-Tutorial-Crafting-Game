/// @description 

// Rotate the object until it reaches its target
rotation = lerp(rotation, 45, 0.1);

// Faces the same way the player faces
image_angle = rotation * obj_placeholder_player.image_xscale;

var _mouse_click_left = mouse_check_button(mb_left);

var _breakable = instance_position(mouse_x, mouse_y, obj_breakable_parent);


// Look at the breakable object and execute code there
with (_breakable) {
	// Get the distance
	var _dist = distance_to_object(obj_placeholder_player);
	
	if (_dist < other.break_distance) {
		// Set selected object
		other.selector_instance = id;
		
		if (other.cooldown == 0 && _mouse_click_left) {
			// Reduce hp
			hp--;
			
			// Set rotation for animation
			other.rotation = -80;
			
			// Set cooldown
			other.cooldown = 20;
		}
	}
}

if (cooldown > 0) cooldown--;