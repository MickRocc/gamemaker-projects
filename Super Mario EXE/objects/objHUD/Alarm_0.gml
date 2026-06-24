// Check to see if the game is moving between stages
if (!(global.next_stage && global.level_timer == 0)){
	
	// Check to see if the game is paused
	if (!(global.game_paused)){

		// If the game isn't paused, has the level been completed?
		if (!(global.stage_complete)){
		
			// If the timer is not equal to zero
			if (global.level_timer > 0){
			
				// Decrease timer by one, then run alarm 0 for 45 steps
				global.level_timer -= 1;
				alarm[0] = 45;
			}
		}
		// Keep running alarm[0]
		else{
			alarm[0] = 45;
		}
	}

	else{
	
		// Keep running alarm[0] until the game is unpaused
		alarm[0] = 45;
	}
}