/// @description Player movement inputs

// Movement inputs
var _left = keyboard_check(ord("A"))  or keyboard_check(vk_left);
var _right = keyboard_check(ord("D")) or keyboard_check(vk_right);
var _up = keyboard_check(ord("W")) or keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) or keyboard_check(vk_down);

// Input axis
var _input_x = _right - _left;
var _input_y = _down - _up;


// Get movement speed
var _length = sqrt(sqr(_input_x) + sqr(_input_y))
if (_length != 0) {
	// Normalize the movement vector when moving diagonal
	move_x = round(_input_x / _length) * move_speed;
	move_y = round(_input_y / _length) * move_speed;
} else {
	// Movement is not diagonal
	move_x = _input_x * move_speed;
	move_y = _input_y * move_speed;
}

// If the player collides with an object, then stop movement in that direction
if (collision(x + move_x, y)) {
	move_x = 0;
}

if (collision(x, y + move_y)) {
	move_y = 0;
}

// Move the object
x += move_x;
y += move_y;

if (move_x != 0) {
	if (move_x > 0) {
		// If moving right
		image_xscale = 1;
	} else {
		// Moving left
		image_xscale = -1;
	}
	
}

sprite_index = spr_placeholder_player	