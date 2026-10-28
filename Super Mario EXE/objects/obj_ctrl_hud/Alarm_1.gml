if(!global.is_in_menu){
	// Check to see if the game is paused
	if (!(global.game_paused)){
		// If the stage has been completed
		if (global.stage_complete){
		
			// Check to for the timer countdown flag
			if (!(global.timer_add_up)){
			
			// Add points to the hidden score (remaining time * 50)
				global.game_score += global.level_timer * 50;
			}
		
			// Flag the timer for countdown
			global.timer_add_up = true;
		
			// If the timer is not equal to zero
			if(global.level_timer > 0){
			
				// Decrease timer by one, then run alarm 0 for 1 steps
				global.level_timer -= 1;
				alarm[1] = 1;
			}
		}
		else{
		
			// Keep running alarm[1] until the stage complete flag has been set
			alarm[1] = 1;
		}
	}

	else{
	
		// If the stage has been completed
		if (global.stage_complete){
		
			// The game should not be pausable here, restart if it is
			room_restart();
		}
		else{
	
			// Keep running alarm[1]
			alarm[1] = 1;
		}
	}
}