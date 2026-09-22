// Set the main HUD font
draw_set_font(ftMain);

// Draw GUI coordinates are independent of the window and display size.
var guiWidth = display_get_gui_width();
var guiCenterX = guiWidth * 0.5;

// Center-align text unless changed later
draw_set_halign(fa_center);

// Check which player is active (0 = Mario, 1 = Luigi)
if (global.current_player == 0) {

    // Draw "MARIO" at the HUD text position
    draw_text(global.playerText_x,
              global.playerText_y,
              "MARIO");

    // Draw Mario's coin counter (custom script)
    draw_coin_counter(global.current_player);
}
else if (global.current_player == 1) {

    // Draw "LUIGI" at the HUD text position
    draw_text(global.playerText_x,
              global.playerText_y,
              "LUIGI");

    // Center-align again (Luigi HUD uses centered elements)
    draw_set_halign(fa_center);

    // Draw Luigi's coin counter
    draw_coin_counter(global.current_player);

    // Draw Luigi's item box sprite
    draw_sprite(sprItemBox, global.itemBox_item,
                guiCenterX - 64,
                global.LuigiItem_y);
}

// Reset alignment to left for the health bar
draw_set_halign(fa_left);

// Draw the health bar
if (global.current_player == 0){
	
	draw_sprite(sprHealthBar, global.Mario_powerup,
            global.playerHP_x,
            global.playerHP_y);
}

if (global.current_player == 1){
	
	draw_sprite(sprHealthBar, global.Luigi_powerup,
            global.playerHP_x,
            global.playerHP_y);
}

// Center-align again for the world/timer text
draw_set_halign(fa_center);

// Draw "WORLD" label
draw_text(guiWidth - 400,
          global.worldText_y,
          "WORLD");

// Draw stage number (e.g., "1-1")
draw_text(guiWidth - 400,
          global.stageText_y,
          "1-" + string(global.stage));

// Draw "TIME" label
draw_text(guiWidth - 176,
          global.timerText_y,
          "TIME");

// Draw the timer digits only if in an actual stage
if (!(global.next_stage)) {
	if (global.level_timer >= 100){
		draw_text(guiWidth - 170,
          global.timerDigits_y,
          string(global.level_timer));
	}
	if (global.level_timer <= 99 && global.level_timer >= 10){
		draw_text(guiWidth - 170,
          global.timerDigits_y,
          "0" + string(global.level_timer));
	}
	if (global.level_timer < 10){
		draw_text(guiWidth - 170,
          global.timerDigits_y,
          "00" + string(global.level_timer));
	}
}

// If not in a stage, draw extra information
if (global.next_stage) {
	// Reset alignment to left for any future drawing
	draw_set_halign(fa_center);
	// Draw "WORLD" label and stage number
	draw_text(guiCenterX,
          global.worldText_y + 256,
          "WORLD " + "1-" + string(global.stage) + "\n\n\n  x ");
		  draw_set_font(ftSpecial);
	draw_text(guiCenterX + 64,
          global.worldText_y + 316,
          "∞");
	
	// If the player is Mario
	if (global.current_player == 0){
		draw_sprite(sprMarioReady, 0, guiCenterX - 50,
			global.worldText_y + 342);
	}
}

// If in debug mode, display debug information on-screen
if (global.HUD_test_mode) {
	
	// Reset alignment to left for any future drawing
	draw_set_halign(fa_left);
	// Set font color
	draw_set_color(c_yellow);
	draw_text(64, 176, "score "
			+ string(global.game_score) + "\n" + "paused?" + string(global.game_paused)
			+ "\nwin?" + string(global.stage_complete)
			+ "\n in transition?" + string(global.next_stage)
			+ "\n time to move " + string(alarm[2])
			+ "\nYou really shouldn't be in debug mode, " + string(global.WTF) + ".");
	
	// Reset font color to white
	draw_set_color(c_white);
}

// Do not leave the transition font active for later GUI drawing.
draw_set_font(ftMain);