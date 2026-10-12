//Create a new instance of objDisplayController to manage the display elements of the game.
instance_create_layer(0, 0, "Instances", objDisplayController);

// Set the initial global state for a new game session.
GameLoad();

//

alarm[0] =  game_get_speed(gamespeed_fps);