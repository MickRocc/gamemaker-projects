/// @desc Force Player to Start in Center of Screen

// Assuming the global variables are set by the camera object first
var cam_x = floor(x / global.roomSize_width) * global.roomSize_width;
var cam_y = floor(y / global.roomSize_height) * global.roomSize_height;

// Center the player within the detected room block (cam_x, cam_y)
x = cam_x + (global.roomSize_width / 2);
y = cam_y + (global.roomSize_height / 2);