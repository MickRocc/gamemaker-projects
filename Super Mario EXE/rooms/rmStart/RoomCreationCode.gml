// Room Creation Code
function main() // Main Function
{
	// Initialize All Global Variables 
	init_globals();

	// Note: Normally the game waits for input from the player,
	// But for now just transition to the Test HUD Stage
	room_goto(stgTest_transition);
}

// Call the main function to start the room creation process
main();