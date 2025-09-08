if ativado {
    if image_index<6 {
        if place_meeting(x, y+8, obj_player) and !global.player_dialogo{
        	obj_player.muda_botao = true
            //puzzle
            if puzzle{
                if(image_index == 4 or keyboard_check(vk_escape)){
                    puzzle = false
                    global.player_ocupado = false
                    if image_index == 4 {
                    	instance_create_layer(x,y,"Instances",obj_texto, { tipo: 9})
                    }
                    exit
                }
                global.player_ocupado = true
                obj_player.muda_botao = false
                puzzle = true
                if keyboard_check(ord("F")) and !estoro and image_index < 4{
                    if(tensao<100){
                        tensao+=2
                        progresso+=1
                    }else{
                        estoro = true
                        erros++
                        progresso-=15
                    }
                }else{
                    if(tensao>0){
                        tensao-=0.5
                    }else{
                        estoro = false
                    }
                }
                if progresso > 100 and image_index < 4{
                    progresso = 0
                    tensao = 0
                    image_index++
                }
            }
            if keyboard_check_pressed(ord("E")) and !puzzle and !global.player_ocupado{
                if primeiraInteracao{
                    primeiraInteracao = false
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 7})
                }else if(image_index < 4){ 
                    puzzle = true
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 8})
                }else if image_index == 5{
                    audio_play_sound(aud_pegando_item,0,false,global.volume)
                    if(erros>=5){
                        instance_create_layer(x,y,"Instances",obj_texto, { tipo: 10})
                        global.inventario[global.slotColocar-1] = spr_invPeDeCabra
                        global.inventario_nomes[global.slotColocar-1] = "Pé de Cabra"
                        global.puzzle_ventilacao = true
                        image_index = 6
                    }else{
                        global.inventario[global.slotColocar] = spr_invPeDeCabra
                        global.inventario_nomes[global.slotColocar] = "Pé de Cabra"
                        global.slotColocar++
                        global.puzzle_ventilacao = true
                        image_index = 6
                    }
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 11})
                }else{
                    image_index++
                    audio_play_sound(aud_ventilacao,0,false,global.volume)
                }
        	}
        }
    }else{
		obj_player.muda_botao = false
		ativado = false
	}
}else{
    for(i = 0; i <= 11; i++){
        if global.inventario[i] == spr_invChaveQuarto and obj_porta.tentativa >= 2{
            ativado = true
            exit
        }
    }
}

