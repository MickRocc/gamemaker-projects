///@desc player_animation(dirction, action)
function player_animation(argument0, argument1){
	if(argument1 = "walk"){
		if(argument0 = "right"){
			ani_min_frame = 3
			ani_max_frame = 5
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
		if(argument0 = "left"){
			ani_min_frame = 6
			ani_max_frame = 8
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
		if(argument0 = "up"){
			ani_min_frame = 9
			ani_max_frame = 11
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
		if(argument0 = "down"){
			ani_min_frame = 0
			ani_max_frame = 2
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
	}
	if(argument1 = "use item"){
		if(argument0 = "right"){
			ani_min_frame = 13
			ani_max_frame = 13
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
		if(argument0 = "left"){
			ani_min_frame = 14
			ani_max_frame = 14
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
		if(argument0 = "up"){
			ani_min_frame = 15
			ani_max_frame = 15
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
		if(argument0 = "down"){
			ani_min_frame = 12
			ani_max_frame = 12
			if(global.playerFrame < ani_min_frame){
				global.playerFrame = ani_min_frame
			}
			else if(global.playerFrame > ani_max_frame){
				global.playerFrame = ani_max_frame
			}
		}
	}
	
}