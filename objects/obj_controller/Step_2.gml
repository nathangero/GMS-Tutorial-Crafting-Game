/// @description 

// Do depth so the appropriate objects end up in front
with (all) {
	depth = -bbox_bottom;
	
	if (instance_exists(obj_placeholder_player) && obj_placeholder_player.held_item == id) {
		// Bring item to forefront by 8 points above the ground
		depth -= 30;
	}
}