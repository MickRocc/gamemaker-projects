// Check to see if the game is moving between stages
if (!(global.next_stage)){
	
	// Check to see if the game is paused
	if (!(global.game_paused)){	
		// If the game isn't paused has the level been completed
		if (!(global.stage_complete)){
		
			// If the timer is not equal to zero
			if (global.level_timer > 0){
			
				// Decrease timer by one, then run alarm 0 for 45 steps
				global.level_timer -= 1;
				alarm[0] = 45;
			}
		
			//Keep running alarm[1] until the stage complete flag has been set
			alarm[1] = 1;
		}
	
		// If the level has been completed
		else if (global.stage_complete){
		
			// Flag the timer for countdown
			global.timer_addUp = true;
		
			// If the timer is not equal to zero
			if (global.level_timer > 0){
			
				// Decrease timer by one, then run alarm 0 for 1 steps
				global.level_timer -= 1;
				alarm[1] = 1;
			}
		}
	}
	else{
		// Keep running alarm[0] and alarm[1] until the game is unpaused
		alarm[0] = 45;
		alarm[1] = 1;
	}
}