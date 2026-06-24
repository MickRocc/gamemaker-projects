// Update Screen / View Metrics For HUD alignment

global.screen_centerH		= view_get_wport(0)	/ 2;    
global.screen_maxW			= view_get_wport(0);

// Set stage number

global.stage = 1;

// Set stage timer (BUG FIX #1)

global.level_timer = 300 + 1;

// Set timer add up flag to false

global.timer_addUp = false;

// Set stage complete flag to false

global.stage_complete = false;

/* Ensure the HUD's alarm[0] and alarm[1] are running
   (BUG FIX #2) */

objHUD.alarm[0] = 1;
objHUD.alarm[1] = 1;

/* BUG FIX #1 Add one to the timer to override stage
   starting at one minus the total time.
   BUG FIXED: Reactivating the timers on stage reload
   due to player fail or game glitch.
   
   BUG Fix #2 Activate both HUD's timers.
   BUG FIXED: After a stage reload, the HUD's two
   alarms which control the timer don't start as intended. */  