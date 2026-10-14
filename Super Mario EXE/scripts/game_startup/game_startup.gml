function game_startup() {
    // ---------------------------------------------------------
    // Player State
    // ---------------------------------------------------------
    global.mario_power_up  = 3;       // 1 = small; 2 = big; 3 = fire; 4 = wand (Luigi only)
    global.luigi_power_up  = 1;       // Same mapping as Mario
    global.player_has_wand = false;   // Whether or not the player has the wand
    global.current_player = 0;       // 0 = Mario; 1 = Luigi

    // ---------------------------------------------------------
    // Gameplay State
    // ---------------------------------------------------------
	global.is_in_menu		   = false;	   // whether the game is in the main menu or not.
    global.item_box_enabled = false;	   // true or false (on or off)
    global.item_box_item    = 0;        // 0 = none; 1 = mushroom; 2 = fire flower
    global.hud_test_mode   = false;    // Enables HUD debug mode
    global.next_stage      = false;    // Is the game transitioning stages?
    global.level_timer     = 400;      // Seconds remaining
    global.game_paused     = false;    // Is the game paused?
    global.timer_add_up     = false;    // Is remaining time being added to game_score?
    global.stage           = 3;        // Stage number, e.g. 1-3
    global.stage_complete  = false;    // Has the player completed the stage?
    global.final_boss      = false;    // Is the timer replaced by boss HP?
    global.coins           = 0;        // Coin count
    global.game_score      = 0;        // Hidden score tally

    // ---------------------------------------------------------
    // Screen / View Metrics
    // ---------------------------------------------------------
    global.screen_center_h = 0; // Horizontal center of the viewport
    global.screen_max_w    = 0; // Viewport width

    // ---------------------------------------------------------
    // HUD Layout Positions
    // ---------------------------------------------------------
    global.player_text_x = 200;
    global.player_text_y = 80;

    global.player_hp_x = 140;
    global.player_hp_y = 112;

    // Mario coin counter
    global.mario_coin_counter_ico_x = global.screen_center_h - 72;
    global.mario_coin_counter_ico_y = 120;
    global.mario_coin_counter_x     = global.screen_center_h;
    global.mario_coin_counter_y     = 108;

    // Luigi coin counter
    global.luigi_coin_counter_ico_x = 164;
    global.luigi_coin_counter_ico_y = 160;
    global.luigi_coin_counter_x     = 234;
    global.luigi_coin_counter_y     = 148;

    // Luigi item box
    global.luigi_item_x = global.screen_center_h - 64;
    global.luigi_item_y = 80;

    // World / stage / timer text
    global.world_text_x = global.screen_max_w - 400;
    global.world_text_y = 80;

    global.stage_text_y = 108;

    global.timer_text_x = global.screen_max_w - 176;
    global.timer_text_y = 80;

    global.timer_digits_x = global.screen_max_w - 170;
    global.timer_digits_y = 108;
}