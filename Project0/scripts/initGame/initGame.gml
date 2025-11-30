function initGame(){
	/*initialize global variables
	**Room to Room Navigation Variables**
	VARIABLE				DESCRIPTION												NOTES
	roomSize_width			width of the "room" within the room
	roomSize_height			height of the "room" within the room
	playerSpeed				the walking speed of the player
	controlMode				the control mode for controlling the player
	playerLeft				the key/button to move the character left
	playerRight				the key/button to move the character right
	playerUp				the key/button to move the character Up
	playerDown				the key/button to move the character down
	playerhDir				the horizontal direction the player is facing			0 = No, -1 = left, 1 = right
	playervDir				the vertical direction the player is facing				0 = No, -1 = up, 1 = down
	*/
	global.roomSize_width = 640
	global.roomSize_height = 480
	global.playerSpeed = 1.25
	global.controlMode = "key"
	global.playerLeft = vk_left
	global.playerRight = vk_right
	global.playerUp = vk_up
	global.playerDown = vk_down
	global.playerhDir = 1
	global.playervDir = 0
}