/// @description 

var _player_exists = instance_exists(obj_placeholder_player);
var _held_item = noone;

if (_player_exists) _held_item = obj_placeholder_player.held_item;

// Do depth so the appropriate objects end up in front
with (all) {
	depth = -bbox_bottom;
	
	if (_player_exists && _held_item == id) {
		
		// Bring item to forefront by 8 points above the ground
		depth -= 30;
	}
}