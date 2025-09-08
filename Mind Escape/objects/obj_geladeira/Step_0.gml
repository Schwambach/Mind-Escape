if place_meeting(x, y, obj_player){
	obj_player.muda_botao = true
    if !global.player_dialogo {
    	if keyboard_check_pressed(ord("E")){
            if primeiroVez{
                instance_create_layer(186,272,"Instances",obj_texto, { tipo: 20})
                primeiroVez = false
                global.fala_geladeira = true
            }
            mostrandoFoto = !mostrandoFoto
            global.player_ocupado = !global.player_ocupado
    	}
    }
}