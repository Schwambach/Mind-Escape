if place_meeting(x, y, obj_player){
	obj_player.muda_botao = true
	if keyboard_check_pressed(ord("E")){
		if image_index = 0{
			image_index = 1
            audio_play_sound(aud_armario_abrindo,0,false,global.volume)
		}else{
			image_index = 0
            audio_play_sound(aud_armario_fechando,0,false,global.volume)
		}
	}
}