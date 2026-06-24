// Update Screen / View Metrics For HUD alignment
global.screen_centerH					= view_get_wport(0)	/ 2;    
global.screen_maxW						= view_get_wport(0);

// Set stage number
global.stage							= 1;

// Set stage timer
global.level_timer						= 0;

// Set timer add up flag to false
global.timer_addUp						= false;

// Set stage complete flag to false
global.stage_complete					= false;

// This is a transition and not a stage
global.next_stage						= true;