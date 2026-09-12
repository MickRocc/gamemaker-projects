function GameLoad() {
    // ---------------------------------------------------------
    // Player State
    // ---------------------------------------------------------
    global.Mario_powerup  = 1;       // 1 = small; 2 = big; 3 = fire; 4 = wand (Luigi only)
    global.Luigi_powerup  = 1;       // Same mapping as Mario
    global.player_hasWand = false;   // Whether or not the player has the wand
    global.current_player = 0;       // 0 = Mario; 1 = Luigi

    // ---------------------------------------------------------
    // Gameplay State
    // ---------------------------------------------------------
    global.itemBox_enabled = false;	   // true or false (on or off)
    global.itemBox_item    = 0;        // 0 = none; 1 = mushroom; 2 = fire flower
    global.HUD_test_mode   = false;    // Enables HUD debug mode
    global.next_stage      = false;    // Is the game transitioning stages?
    global.level_timer     = 400;      // Seconds remaining
    global.game_paused     = false;    // Is the game paused?
    global.timer_addUp     = false;    // Is remaining time being added to game_score?
    global.stage           = 3;        // Stage number, e.g. 1-3
    global.stage_complete  = false;    // Has the player completed the stage?
    global.final_boss      = false;    // Is the timer replaced by boss HP?
    global.coins           = 0;        // Coin count
    global.game_score      = 0;        // Hidden score tally

    // ---------------------------------------------------------
    // Screen / View Metrics
    // ---------------------------------------------------------
    global.screen_centerH = 0; // Horizontal center of the viewport
    global.screen_maxW    = 0; // Viewport width

    // ---------------------------------------------------------
    // HUD Layout Positions
    // ---------------------------------------------------------
    global.playerText_x = 200;
    global.playerText_y = 80;

    global.playerHP_x = 140;
    global.playerHP_y = 112;

    // Mario coin counter
    global.MarioCoinCounterIco_x = global.screen_centerH - 72;
    global.MarioCoinCounterIco_y = 120;
    global.MarioCoinCounter_x     = global.screen_centerH;
    global.MarioCoinCounter_y     = 108;

    // Luigi coin counter
    global.LuigiCoinCounterIco_x = 164;
    global.LuigiCoinCounterIco_y = 160;
    global.LuigiCoinCounter_x     = 234;
    global.LuigiCoinCounter_y     = 148;

    // Luigi item box
    global.LuigiItem_x = global.screen_centerH - 64;
    global.LuigiItem_y = 80;

    // World / stage / timer text
    global.worldText_x = global.screen_maxW - 400;
    global.worldText_y = 80;

    global.stageText_y = 108;

    global.timerText_x = global.screen_maxW - 176;
    global.timerText_y = 80;

    global.timerDigits_x = global.screen_maxW - 170;
    global.timerDigits_y = 108;
}