// Set the initial global state for a new game session.
GameLoad();

// Start the Game (In Test Mode)
room_goto(stgTest_transition);

//Create a new instance of objDisplayController to manage the display elements of the game.
instance_create_layer(0, 0, "Instances", objDisplayController);