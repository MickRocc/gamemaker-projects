// ---------------------------------------------------------
// Player State
// ---------------------------------------------------------
global.Mario_powerup      = 1;			// 1 = small; 2 = big; 3 = fire; 4 = wand (Luigi only)
global.Luigi_powerup      = 1;			// same mapping as Mario
global.player_hasWand	  = "false";	// "true" or "false" (string)
global.current_player     = 0;			// 0 = Mario; 1 = Luigi

// ---------------------------------------------------------
// Gameplay State
// ---------------------------------------------------------
global.itemBox_enabled    = "false";  // "true" or "false" (string)
global.itemBox_item       = 0;        // 0 = none; 1 = mushroom; 2 = fire flower
global.HUD_test_mode      = false;    // enables HUD debug mode
global.next_stage	      = false;     // is the game transitioning stages?
global.level_timer        = 400;      // seconds remaining
global.game_paused		  = false;	  // is the game paused or not?
global.timer_addUp		  = false;	  // is the remaining time being added to game_score?
global.stage              = 3;        // stage number (e.g., 1-3)
global.stage_complete	  = false;	  // if the player completed the stage
global.final_boss		  = false;	  // true = the timer is replaced by boss hp; false = it isn't
global.coins              = 0;        // coin count
global.game_score         = 0;        // hidden score tally

// ---------------------------------------------------------
// Screen / View Metrics (set later based on view)
// ---------------------------------------------------------
global.screen_centerH     = 0;    // horizontal center of viewport
global.screen_maxW        = 0;    // viewport width

// ---------------------------------------------------------
// HUD Layout Positions
// ---------------------------------------------------------
global.playerText_x               = 200;
global.playerText_y               = 80;

global.playerHP_x                 = 140;
global.playerHP_y                 = 112;

// Mario coin counter
global.MarioCoinCounterIco_x      = global.screen_centerH - 72;
global.MarioCoinCounterIco_y      = 120;
global.MarioCoinCounter_x         = global.screen_centerH;
global.MarioCoinCounter_y         = 108;

// Luigi coin counter
global.LuigiCoinCounterIco_x      = 164;
global.LuigiCoinCounterIco_y      = 160;
global.LuigiCoinCounter_x         = 234;
global.LuigiCoinCounter_y         = 148;

// Luigi item box
global.LuigiItem_x                = global.screen_centerH - 64;
global.LuigiItem_y                = 80;

// World / Stage / Timer text
global.worldText_x                = global.screen_maxW - 400;
global.worldText_y                = 80;

global.stageText_y                = 108;

global.timerText_x                = global.screen_maxW - 176;
global.timerText_y                = 80;

global.timerDigits_x              = global.screen_maxW - 170;
global.timerDigits_y              = 108;