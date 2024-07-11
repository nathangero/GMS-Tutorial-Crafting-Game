/// @description Player movement inputs

// Movement inputs
var _left = keyboard_check(ord("A"))  or keyboard_check(vk_left)or keyboard_check(vk_left);
var _right = keyboard_check(ord("D")) or keyboard_check(vk_right);
var _up = keyboard_check(ord("W")) or keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) or keyboard_check(vk_down);

// Input axis
var _input_x = _right - _left;
var _input_y = _down - _up;

// Get movement speed
move_x = _input_x * move_speed;
move_y = _input_y * move_speed;

// Move the object
x += move_x;
y += move_y;