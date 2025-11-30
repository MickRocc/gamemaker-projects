
// Maximum X and Y indices for the grid of rooms
// room_width and room_height are built-in GML variables for the actual room size.
// global.room_width/height are your screen dimensions (e.g., 320x240).
max_room_index_x = floor(room_width / global.roomSize_width) - 1
max_room_index_y = floor(room_height / global.roomSize_height) - 1

// Calculate half dimensions for centering
half_width = global.roomSize_width / 2
half_height = global.roomSize_height / 2
// --- Target and Position ---
// Target the player object (assumes a single player instance exists)
if(instance_exists(objPlayer)){
	target = instance_find(objPlayer, 0)
}
// Current room coordinates (0, 0 is the top-left room)
current_room_x = floor(target.x / global.roomSize_width)
current_room_y = floor(target.y / global.roomSize_height)
// The camera's (x, y) should be the top-left of the current room cell.
// Calculate the exact grid position the player is currently in:
x = current_room_x * global.roomSize_width
y = current_room_y * global.roomSize_height

// --- Boundary Limits ---
max_room_index_x = floor(room_width / global.roomSize_width) - 1
max_room_index_y = floor(room_height / global.roomSize_height) - 1

// --- Scrolling Variables (for smooth transition) ---
scroll_speed = 8
is_scrolling = false
target_x = x
target_y = y

