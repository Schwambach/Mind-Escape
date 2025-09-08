if place_meeting(x, y, obj_player) and image_index == 0{
	obj_player.muda_botao = true
	if (keyboard_check_pressed(ord("E"))){
        audio_play_sound(aud_cortina,0,false,global.volume)
        instance_create_layer(186,272,"Instances",obj_texto, { tipo: 19})
		image_speed = 1
	}
}

if(image_index == 6){
	obj_player.muda_botao = false
}

if(image_index > 12){
	image_speed = 0
    global.cortina_aberta = true
}