if(global.playerFrame < ani_max_frame){
	if(moving){
		global.playerFrame += 1
	}
	alarm_set(0,7)
}
else{
	if(moving){
		global.playerFrame = ani_min_frame
	}
	alarm_set(0,7)
}