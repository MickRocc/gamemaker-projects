//Create a new instance of objDisplayController to manage the display elements of the game.
instance_create_layer(0, 0, "Instances", obj_display_controller);

// Set the initial global state for a new game session.
game_startup();

// Set a custom cursor

cursor_sprite = spr_cursor;

// Wait for one game second to transition to the testing stage

alarm[0] =  game_get_speed(gamespeed_fps);