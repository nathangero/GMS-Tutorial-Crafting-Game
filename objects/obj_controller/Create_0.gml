/// @description 

// Resolution
enum RES {
	WIDTH = 320, // Width of camera
	HEIGHT = 180, // Height of camera
	SCALE = 4, // The scale of the camera will be scale x (width x height)
}

// Create camera
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, obj_player, -1, -1, RES.WIDTH / 2, RES.HEIGHT / 2);

// Setup view
view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);