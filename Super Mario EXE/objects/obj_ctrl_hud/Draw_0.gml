// Set the main HUD font
draw_set_font(fnt_main);

// Draw GUI coordinates are independent of the window and display size.
var _gui_width = display_get_gui_width();
var _gui_center_x = _gui_width * 0.5;

// Center-align text unless changed later
draw_set_halign(fa_center);

// Check which player is active (0 = Mario, 1 = Luigi)
if (global.current_player == 0) {

	// Draw "MARIO" at the HUD text position
	draw_text(global.player_text_x,
			global.player_text_y,
			"MARIO");

	// Draw Mario's coin counter (custom script)
	draw_coin_counter(global.current_player);
}
else if (global.current_player == 1) {

	// Draw "LUIGI" at the HUD text position
	draw_text(global.player_text_x,
			global.player_text_y,
			"LUIGI");

	// Center-align again (Luigi HUD uses centered elements)
	draw_set_halign(fa_center);

	// Draw Luigi's coin counter
	draw_coin_counter(global.current_player);

	// Draw Luigi's item box sprite
	draw_sprite(spr_item_box, global.item_box_item,
				gui_center_x - 64,
				global.luigi_item_y);
}

// Reset alignment to left for the health bar
draw_set_halign(fa_left);

// Draw the health bar
if (global.current_player == 0){
	
	draw_sprite(spr_health_bar, global.mario_power_up,
			global.player_hp_x,
			global.player_hp_y);
}

if (global.current_player == 1){
	
	draw_sprite(spr_health_bar, global.luigi_power_up,
			global.player_hp_x,
			global.player_hp_y);
}

// Center-align again for the world/timer text
draw_set_halign(fa_center);

// Draw "WORLD" label
draw_text(_gui_width - 400,
		global.world_text_y,
		"WORLD");

// Draw stage number (e.g., "1-1")
draw_text(_gui_width - 400,
		global.stage_text_y,
		"1-" + string(global.stage));

// Draw "TIME" label
draw_text(_gui_width - 176,
		global.timer_text_y,
		"TIME");

// Draw the timer digits only if in an actual stage only
if(!(global.is_in_menu)){
	if (!(global.next_stage)) {
		if (global.level_timer >= 100){
			draw_text(_gui_width - 170,
			global.timer_digits_y,
			string(global.level_timer));
		}
		if (global.level_timer <= 99 && global.level_timer >= 10){
			draw_text(_gui_width - 170,
			global.timer_digits_y,
			"0" + string(global.level_timer));
		}
		if (global.level_timer < 10){
			draw_text(_gui_width - 170,
			global.timer_digits_y,
			"00" + string(global.level_timer));
		}
	}
}
draw_set_halign(fa_left);

// If not in a stage, draw extra information
if (global.next_stage) {
	// Reset alignment to left for any future drawing
	draw_set_halign(fa_center);
	// Draw "WORLD" label and stage number
	draw_text(_gui_center_x,
	global.world_text_y + 256,
		"WORLD " + "1-" + string(global.stage) + "\n\n\n  x ");
		draw_set_font(fnt_special);
		draw_text(_gui_center_x + 64,
		global.world_text_y + 316,
		"∞");
	
	// If the player is Mario
	if (global.current_player == 0){
		draw_sprite(spr_mario_ready, 0, _gui_center_x - 50,
		global.world_text_y + 342);
	}
	draw_set_halign(fa_left);
}

// If in debug mode, display debug information on-screen
if (global.hud_test_mode) {
	
	// Reset alignment to left for any future drawing
	draw_set_halign(fa_left);
	// Set font color
	draw_set_color(c_yellow);
	draw_text(64, 176, "score "
			+ string(global.game_score) + "\n" + "paused?" + string(global.game_paused)
			+ "\nwin?" + string(global.stage_complete)
			+ "\n in transition?" + string(global.next_stage)
			+ "\nYou really shouldn't be in debug mode, " + string(global.wtf) + ".");
	// Reset font color to white
	draw_set_color(c_white);
}

// Do not leave the transition font active for later GUI drawing.
draw_set_font(fnt_main);

// If the current room is a menu
if(!global.is_in_menu){

	// 
	draw_text(0,_gui_center_x - 50,
		"Start");
	
}