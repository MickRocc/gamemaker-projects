///@desc initGame()
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
	playerAtk				the key/button to attack
	playerItm				the key/button to use an item
	playerDir				the direction the player is facing						up, down, left, right
	playerAction			the action the player is taking							walk, use item, attack
	
	*/
	global.roomSize_width = 640
	global.roomSize_height = 480
	global.playerSpeed = 1.25
	global.controlMode = "key"
	global.playerLeft = vk_left
	global.playerRight = vk_right
	global.playerUp = vk_up
	global.playerDown = vk_down
	global.playerAtk = ord("Z")
	global.playerItm = ord("X")
	global.playerDir = "down"
	global.playerFrame = 0
	global.playerAction = "walk"
}