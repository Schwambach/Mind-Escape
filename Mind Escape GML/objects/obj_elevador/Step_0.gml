if place_meeting(x, y, obj_player) and global.etapaElevadorSala<3 and global.ferramentas_pegas{
    if puzzle {
    	//movimentação
        if keyboard_check_pressed(vk_down) {
            if !(posiLinha == 2){
                posiLinha++
            }
        }
        if keyboard_check_pressed(vk_up) {
            if !(posiLinha == 0){
                posiLinha--
            }
        }
        if keyboard_check_pressed(vk_enter) {
            if posiColuna == 1{
                posiColuna = 0
                if selecionadoPrimeiro{
                    prontoPrimeiro = true
                }
                if selecionadoSegundo{
                    prontoSegundo = true
                }
                if selecionadoTerceiro{
                    prontoTerceiro = true
                }
            }else{
                posiColuna = 1
                switch (posiLinha) {
                    case 0:
                        selecionadoPrimeiro = true
                        prontoPrimeiro = false
                        posiLinha = 0
                    break
                    case 1:
                        selecionadoSegundo = true
                        prontoSegundo = false
                        posiLinha = 0
                    break
                    case 2:
                        selecionadoTerceiro = true
                        prontoTerceiro = false
                        posiLinha = 0
                    break
                }
            }
        }
        
        //Seleção
        if selecionadoPrimeiro{
            if(!prontoPrimeiro){
                confirmadoPrimeiro = posiLinha
            }
        }
        if selecionadoSegundo{
            if(!prontoSegundo){
                confirmadoSegundo = posiLinha
            }
        }
        if selecionadoTerceiro{
            if(!prontoTerceiro){
                confirmadoTerceiro = posiLinha
            }
        }
        
        valorAtual=(valorPrimeiro*(confirmadoPrimeiro+1)) + (valorSegundo*(confirmadoSegundo+1)) + (valorTerceiro*(confirmadoTerceiro+1))
        
        if prontoPrimeiro and prontoSegundo and prontoTerceiro and valorAtual == 36{
            global.player_ocupado = false
            global.etapaElevadorSala++
            puzzle = false
            image_index = 2
            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 38})
        }
    }else {
	obj_player.muda_botao = true
    	if (keyboard_check_pressed(ord("E")) and !global.player_dialogo){
            switch (global.etapaElevadorSala) {
            	case 0:
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 36})
                    global.etapaElevadorSala++
                    image_index = 1
                    audio_play_sound(aud_ventilacao,0,false,global.volume)
                break
                case 1:
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 37})
                    global.etapaElevadorSala++
                    puzzle = true
                    global.player_ocupado = true
                break
                case 2:
                    puzzle = true
                    global.player_ocupado = true
                break
            }
    	}
    }
}

if(image_index == 6){
	obj_player.muda_botao = false
}

if(image_index > 17){
	image_speed = 0
}else if global.destruir_porta == 2{
    image_speed = 1
}