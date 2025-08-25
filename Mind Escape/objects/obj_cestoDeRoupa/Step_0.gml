if ativado{
    if place_meeting(x, y, obj_player){
    	obj_player.muda_botao = true
    	if keyboard_check_pressed(ord("E")){
            audio_play_sound(aud_pegando_item,0,false,global.volume)
    		global.inventario[global.slotColocar] = spr_invGrampo
            global.inventario_nomes[global.slotColocar] = "Grampo"
            global.slotColocar++
            global.grampo_pego = true
            instance_create_layer(186,272,"Instances",obj_texto, { tipo: 27})
            image_index++
            ativado = false
    	}
    }
}