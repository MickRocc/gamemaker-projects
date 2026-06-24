// Set the main HUD font
draw_set_font(ftMain);

// Center-align text unless changed later
draw_set_halign(fa_center);

// Check which player is active (0 = Mario, 1 = Luigi)
if (global.current_player == 0) {

    // Draw "MARIO" at the HUD text position, offset by the view's top-left corner
    draw_text(view_get_xport(0) + global.playerText_x,
              view_get_yport(0) + global.playerText_y,
              "MARIO");

    // Draw Mario's coin counter (custom script)
    draw_coin_counter(global.current_player);
}
else if (global.current_player == 1) {

    // Draw "LUIGI" at the HUD text position
    draw_text(view_get_xport(0) + global.playerText_x,
              view_get_yport(0) + global.playerText_y,
              "LUIGI");

    // Center-align again (Luigi HUD uses centered elements)
    draw_set_halign(fa_center);

    // Draw Luigi's coin counter
    draw_coin_counter(global.current_player);

    // Draw Luigi's item box sprite
    draw_sprite(sprItemBox, global.itemBox_item,
                view_get_xport(0) + global.LuigiItem_x,
                view_get_yport(0) + global.LuigiItem_y);
}

// Reset alignment to left for the health bar
draw_set_halign(fa_left);

// Draw the health bar
if (global.current_player == 0){
	
	draw_sprite(sprHealthBar, global.Mario_powerup,
            view_get_xport(0) + global.playerHP_x,
            view_get_yport(0) + global.playerHP_y);
}

if (global.current_player == 1){
	
	draw_sprite(sprHealthBar, global.Luigi_powerup,
            view_get_xport(0) + global.playerHP_x,
            view_get_yport(0) + global.playerHP_y);
}

// Center-align again for the world/timer text
draw_set_halign(fa_center);

// Draw "WORLD" label
draw_text(view_get_xport(0) + global.worldText_x,
          view_get_yport(0) + global.worldText_y,
          "WORLD");

// Draw stage number (e.g., "1-1")
draw_text(view_get_xport(0) + global.worldText_x,
          view_get_yport(0) + global.stageText_y,
          "1-" + string(global.stage));

// Draw "TIME" label
draw_text(view_get_xport(0) + global.timerText_x,
          view_get_yport(0) + global.timerText_y,
          "TIME");

// Draw the timer digits only if in an actual stage
if(!(global.next_stage)){
	draw_text(view_get_xport(0) + global.timerDigits_x,
          view_get_yport(0) + global.timerDigits_y,
          string(global.level_timer));
}

// If not in a stage, draw extra information
if(global.next_stage){
	// Reset alignment to left for any future drawing
	draw_set_halign(fa_center);
	// Draw "WORLD" label and stage number
	draw_text(view_get_xport(0) + global.screen_centerH,
          view_get_yport(0) + global.worldText_y + 256,
          "WORLD " + "1-" + string(global.stage) + "\n\n\n  x ");
		  draw_set_font(ftSpecial);
	draw_text(view_get_xport(0) + global.screen_centerH + 64,
          view_get_yport(0) + global.worldText_y + 316,
          "∞");
	
	// If the player is Mario
	if (global.current_player == 0){
		draw_sprite(sprMarioReady, 0, view_get_xport(0) - 50
			+ global.screen_centerH, global.worldText_y + 342);
	}
}

// If in debug mode, display debug information on-screen
if (global.HUD_test_mode) {
	
	// Reset alignment to left for any future drawing
	draw_set_halign(fa_left);
	// Set font color
	draw_set_color(c_yellow);
	draw_text(view_get_xport(0),view_get_yport(0) + 176,"score "
			+ string(global.game_score) + "\n" + "paused?" + string(global.game_paused)
			+ "\nwin?" + string(global.stage_complete)
			+ "\n in transition?" + string(global.next_stage)
			+ "\n time to move " + string(alarm[2])
			+ "\nYou really shouldn't be in debug mode, " + string(global.WTF) + ".");
	
	// Reset font color to white
	draw_set_color(c_white);
}