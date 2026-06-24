// If HUD test mode is enabled, allow debug controls
if (global.HUD_test_mode) {

	if (keyboard_check_direct(vk_shift)){
		
		// Press P to toggle between Mario (0) and Luigi (1)
		if (keyboard_check_pressed(ord("P"))) {

			// If currently Mario, switch to Luigi
			if (global.current_player == 0) {
				global.current_player = 1;
				exit;   // Stop processing this event after switching
			}

			// If currently Luigi, switch back to Mario
			else if (global.current_player == 1) {
				global.current_player = 0;
				exit;   // Stop processing this event after switching
			}
		}

		// Press U to increase powerup state
		if (keyboard_check_pressed(ord("U"))) {
			update_powerup(global.current_player, true);
		}

		// Press D to decrease powerup state
		if (keyboard_check_pressed(ord("D"))) {
			update_powerup(global.current_player, false);
		}
		
	}
	else{
		
		// Press P to pause or unpause the game
		if (keyboard_check_pressed(ord("P"))){
			if (!(global.stage_complete)){
				game_pause();
			}
			else{
				room_restart();
			}
		}
		
		// Test the level complete flag
		if (keyboard_check_pressed(ord("D"))){
			if (!(global.game_paused)){
				global.stage_complete = true;
			}
		}
	}
		
	// Press ESC to immediately end the game (debug shortcut)
	if (keyboard_check_pressed(vk_escape)) {
		game_end();
	}
	
	// Press Space to reset the Stage (debug fail-safe)
	if(keyboard_check_pressed(vk_space)){
		room_restart();
	}
}


if(keyboard_check_pressed(vk_f3)){
	global.HUD_test_mode = true;
	
	// Fetch the username and store it in a variable
    global.WTF = environment_get_variable("USERNAME");
}