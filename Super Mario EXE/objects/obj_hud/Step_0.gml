if(!global.is_in_menu){
	// ---------------------------------------------------------
	// Partially Update HUD Layout Positions
	// ---------------------------------------------------------
	// Mario coin counter
	global.mario_coin_counter_ico_x	 = global.screen_center_h	- 72;
	global.mario_coin_counter_x		 = global.screen_center_h;
	// Luigi item box
	global.luigi_item_x				 = global.screen_center_h	- 64;
	// World / Stage / Timer text
	global.world_text_x				 = global.screen_max_w		- 400;
	global.timer_text_x				 = global.screen_max_w		- 176;
	global.timer_digits_x			 = global.screen_max_w		 -170;
}