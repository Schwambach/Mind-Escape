if place_meeting(x, y, obj_player) and global.etapaElevadorSala < 4{
	obj_player.muda_botao = true
	if (keyboard_check_pressed(ord("E"))){
        if global.etapaElevadorSala == 3{
            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 35})
            abrir = true
            audio_play_sound(aud_elevador_funcionando,0,true,global.volume)
        }else{
            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 34})
        }
        
	}
}

if(image_index == 6){
	obj_player.muda_botao = false
}

if(image_index > 17){
	image_speed = 0
}else if abrir and !global.player_dialogo{
    audio_stop_sound(aud_elevador_funcionando)
    audio_play_sound(aud_elevador_abrindo,0,false,global.volume)
    global.destruir_porta = 2 
    image_speed = 1
    abrir = false
}