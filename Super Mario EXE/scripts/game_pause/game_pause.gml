function game_pause(){

	// If the stage hasn't alreadty been completed
	if(!(global.stage_complete)){
		// Check if the game is already paused
		if(global.game_paused){
		
			// Unpause the game and exit this script
			global.game_paused = false;
			exit;
		}
		// If the game is not paused
		else{
		
			// Pause the game and exit this script
			global.game_paused = true;
			exit;
		}
	}
	else{
		
		// Enusre the game is unpaused and exit this script
		global.game_paused = false;
		exit;
	}
}