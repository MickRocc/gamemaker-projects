half_width = 0
half_height = 0
target = 0
current_room_x = 0
current_room_y = 0
h_limit = 0
v_limit = 0
scroll_speed = 0
is_scrolling = false
// Maximum X and Y indices for the grid of rooms
// room_width and room_height are built-in GML variables for the actual room size.
// global.room_width/height are your screen dimensions (e.g., 320x240).
max_room_index_x = floor(room_width / global.roomSize_width) - 1;
max_room_index_y = floor(room_height / global.roomSize_height) - 1;

// Calculate half dimensions for centering
half_width = global.roomSize_width / 2;
half_height = global.roomSize_height / 2;
// --- Target and Position ---
// Target the player object (assumes a single player instance exists)
if(instance_exists(objPlayer)){
	target = instance_find(objPlayer, 0)
}
// Current room coordinates (0, 0 is the top-left room)
current_room_x = floor(target.x / global.roomSize_width)
current_room_y = floor(target.y / global.roomSize_height)
// Starting position for the camera (top-left of the initial room)
x = current_room_x * global.roomSize_width
y = current_room_y * global.roomSize_height
// Store the camera's horizontal and vertical movement limits
h_limit = room_width - global.roomSize_width
v_limit = room_height - global.roomSize_height
// --- Scrolling Variables (for smooth transition) ---
// Set to 0 for instant snap, or a higher value for smooth scrolling speed
scroll_speed = 8
is_scrolling = false
target.x = x
target.y = y