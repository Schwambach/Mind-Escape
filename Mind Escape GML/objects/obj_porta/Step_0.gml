if ativado {
	if image_index<1 {
		if place_meeting(x, y, obj_player){
			obj_player.muda_botao = true
			if keyboard_check_pressed(ord("E")) and !global.player_ocupado and !global.player_dialogo{
                if local == 0{ /*Quarto pra cozinha*/
                    switch (tentativa) {
                        case 0:
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 1})
                            tentativa++
                        break
                        case 1:
                            for(i = 0; i <= 11; i++){
                                if global.inventario[i] == spr_invChaveQuarto{
                                    tentativa++
                                    global.etapaPortaQuarto = tentativa
                                    global.inventario_nomes[i] = "Chave(Quarto)"
                                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 3})
                                    exit
                                }
                            }
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 2})
                        break
                        case 2:
                            for(i = 0; i <= 11; i++){
                                if global.inventario[i] == spr_invPeDeCabra{
                                    tentativa++
                                    global.etapaPortaQuarto = tentativa
                                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 5})
                                    exit
                                }
                            }
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 4})
                        break
                        case 3:
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 6})
                            image_index = 1
                            global.destruir_porta = local
                            audio_play_sound(aud_porta_abrindo,0,false,global.volume)
                        break
                    }
				}
			}
		}
	}else{
		obj_player.muda_botao = false
		ativado = false
	}
}