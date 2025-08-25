if ativado {
	if image_index<1 {
		if place_meeting(x, y, obj_player){
            if !puzzle{
            	obj_player.muda_botao = true
            }else{
                if keyboard_check_pressed(vk_escape){
                    puzzle = false
                }
                barrinha+=sobeDesce*1.5
                if barrinha > 93 or barrinha < 0{
                    sobeDesce = sobeDesce*-1
                }
                if keyboard_check_pressed(ord("F")){
                    audio_play_sound(aud_grampo_batendo,0,false,global.volume)
                    if barrinha>45 and barrinha<56{
                        acertos++
                    }else if acertos>0{
                        acertos--
                        erros++
                    }
                    barrinha = 10
                }
                if acertos == 5{ 
                    puzzle = false
                    destrancou = true
                    if erros>4{
                        instance_create_layer(x,y,"Instances",obj_texto, { tipo: 31})
                        for (var i = 0; i < 12; i++) {
                            if (global.inventario[i] == spr_invGrampo ) {
                                global.slotColocar--
                                for (var j = i; j < 12; j++) {
                                    if j<11{
                                    	global.inventario[j] = global.inventario[j+1]
                                        global.inventario_nomes[j] = global.inventario_nomes[j+1]
                                    }
                                }
                                break
                            }
                        }
                    }else{
                        instance_create_layer(x,y,"Instances",obj_texto, { tipo: 30})
                    }
                } 
            }
            if keyboard_check_pressed(ord("E")) and !global.player_ocupado and !global.player_dialogo{
                if etapaPorta == 1 and !destrancou{
                    for (var i = 0; i < 12; i++) {
                        if (global.inventario[i] == spr_invGrampo ) {
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 29})
                            semGrampo= false
                            puzzle = true
                            exit
                        }
                    }
                    if etapaPorta == 1 and semGrampo{
                        instance_create_layer(x,y,"Instances",obj_texto, { tipo: 28})
                    }
                }
                if etapaPorta == 0 and !destrancou{
                    for (var i = 0; i < 12; i++) {
                        if (global.inventario[i] == spr_invChaveCozinha) {
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 25})
                            global.inventario_nomes[i] = "Chave(Cozinha)"
                            semChave = false
                            etapaPorta = 1
                            global.etapaPortaCozinha = etapaPorta
                            exit
                        }
                    }
                    if etapaPorta == 0 and semChave{
                        instance_create_layer(x,y,"Instances",obj_texto, { tipo: 24})
                    }
                }
                if destrancou{
                    audio_play_sound(aud_porta_abrindo,0,false,global.volume)
                    ativado = false
                    image_index++
                    global.destruir_porta = 1
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 26})
                }
                global.etapaPortaCozinha = etapaPorta
            }
        }
    }
}