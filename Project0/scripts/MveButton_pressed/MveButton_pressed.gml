///@desc MveButton_pressed_pressed(inputType,button)
function MveButton_pressed(argument0, argument1){
	inputType = argument0
	button = argument1
	if(inputType == "key"){
		if(keyboard_check(button)){
			if(button == vk_up){
				if(!(global.playerDir == "up")){
					objPlayer.ani_min_frame = 9
					objPlayer.ani_max_frame = 11
					global.playerDir = "up"
					global.playerAction = "walk"
				}
				return keyboard_check(button)
			}
			else if(button == vk_down){
				if(!(global.playerDir == "down")){
					objPlayer.frame = 0
					objPlayer.ani_min_frame = 0
					objPlayer.ani_max_frame = 2
					global.playerDir = "down"
					global.playerAction = "walk"
				}
				return keyboard_check(button)
			}
			else if(button == vk_left){
				if(!(global.playerDir == "left")){
					objPlayer.ani_min_frame = 6
					objPlayer.ani_max_frame = 8
					global.playerDir = "left"
					global.playerAction = "walk"
				}
				return keyboard_check(button)
			}
			else if(button == vk_right){
				if(!(global.playerDir == "right")){
					objPlayer.ani_min_frame = 3
					objPlayer.ani_max_frame = 5
					global.playerDir = "right"
					global.playerAction = "walk"
				}
				return keyboard_check(button)
			}
			if(button == global.playerItm){
				global.playerAction = "use item"
				moving = false
				return keyboard_check(button)
			}
		}
	}
	return -1
}