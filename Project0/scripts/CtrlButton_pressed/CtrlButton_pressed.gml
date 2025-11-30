///CtrlButtom_pressed(inputType,button)
function CtrlButton_pressed(argument0, argument1){
	inputType = argument0
	button = argument1
	if(inputType = "key"){
		if(keyboard_check(button)){
			if(button = vk_up){
				global.playerhDir = 0
				global.playervDir = -1
				return keyboard_check(button)
			}
			else if(button = vk_down){
				global.playerhDir = 0
				global.playervDir = 1

				return keyboard_check(button)
				
			}
			else if(button = vk_left){
				global.playervDir = 0
				global.playerhDir = -1
				return keyboard_check(button)
			}
			else if(button = vk_right){
				global.playervDir = 0
				global.playerhDir = 1
				return keyboard_check(button)
			}
		}
	}
	return -1
}