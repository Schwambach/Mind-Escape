if ativado{
    if place_meeting(x, y, obj_player){
    	obj_player.muda_botao = true
    	if keyboard_check_pressed(ord("E")){
            audio_play_sound(aud_pegando_item,0,false,global.volume)
    		global.inventario[global.slotColocar] = spr_invFusivel
            global.inventario_nomes[global.slotColocar] = "Fusível"
            global.slotColocar++
            global.inventario[global.slotColocar] = spr_invChaveDeFenda
            global.inventario_nomes[global.slotColocar] = "Chave de Fenda"
            global.slotColocar++
            global.inventario[global.slotColocar] = spr_invCortaVergalhao
            global.inventario_nomes[global.slotColocar] = "Corta Vergalhão"
            global.slotColocar++
            global.inventario[global.slotColocar] = spr_invMartelo
            global.inventario_nomes[global.slotColocar] = "Martelo"
            global.slotColocar++
            global.ferramentas_pegas = true
            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 33})
            ativado = false
    	}
    }
}