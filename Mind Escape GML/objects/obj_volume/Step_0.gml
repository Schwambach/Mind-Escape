if (pressionado){
	volume = mouse_x - x
}

if(volume < 0){
	global.volume = 0
}else{
	global.volume = volume/413
    audio_group_set_gain(audiogroup_default,global.volume,0)
}