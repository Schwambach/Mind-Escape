if ativado  {
    if image_index < 2 {
        if place_meeting(x, y, obj_player) and !global.player_dialogo{
        	obj_player.muda_botao = true
            
            if puzzle{
                if(keyboard_check(vk_escape)){
                    puzzle = false
                    global.player_ocupado = false
                    colocandoSenha = false
                    exit
                }
                
                //Trocar ação
                if keyboard_check_pressed(ord("F")){
                    colocandoSenha = !colocandoSenha
                }
                
                global.player_ocupado = true
                obj_player.muda_botao = false
                puzzle = true
                
                if !colocandoSenha {
                    //Sudoku
                    //movimentação
                    if keyboard_check_pressed(vk_down) {
                    	if !(linha == 8){
                            linha++
                        }
                    }
                    if keyboard_check_pressed(vk_up) {
                        if !(linha == 0){
                            linha--
                        }
                    }
                    if keyboard_check_pressed(vk_right) {
                    	if !(coluna == 8){
                            coluna++
                        }
                    }
                    if keyboard_check_pressed(vk_left) {
                        if !(coluna == 0){
                            coluna--
                        }
                    }
                    
                    //Preenchimento
                    for (var i = 1; i <= 9; i++) {
                        if (keyboard_check_pressed(ord(string(i))) || keyboard_check_pressed(vk_numpad0 + i)) {
                            respostas[linha][coluna] = i;
                        }
                    }
                    
                    if (keyboard_check_pressed(vk_backspace)) {
                        respostas[linha][coluna] = noone;
                    }
                }else {
                    //Senha
                    //movimentação
                    if keyboard_check_pressed(vk_right) {
                        if !(posicaoSenha == 6){
                            posicaoSenha++
                        }
                    }
                    if keyboard_check_pressed(vk_left) {
                        if !(posicaoSenha == 0){
                            posicaoSenha--
                        }
                    }
                    
                    //Preenchimento
                    if keyboard_check_pressed(vk_up) {
                        if senhaColocada[posicaoSenha] == 9 {
                            senhaColocada[posicaoSenha] = 1
                        }else{
                            senhaColocada[posicaoSenha]++
                        }
                    }
                    if keyboard_check_pressed(vk_down) {
                        if senhaColocada[posicaoSenha] == 1 {
                            senhaColocada[posicaoSenha] = 9
                        }else{
                            senhaColocada[posicaoSenha]--
                        }
                    }
                }
                
                if keyboard_check_pressed(vk_enter){
                    var numerosCertos = 0
                    for (var i = 0; i < 7; i++) {
                    	if (senhaColocada[i] == senhaCorreta[i]){
                            numerosCertos++
                        }
                    }
                    if numerosCertos == 7 {
                        instance_create_layer(x,y,"Instances",obj_texto, { tipo: 14})
                        puzzle = false
                        global.player_ocupado = false
                        colocandoSenha = false
                        audio_play_sound(aud_caixa_chave,0,false,global.volume*2)
                        image_index++
                        exit
                    }
                }
                
            }
        	if keyboard_check_pressed(ord("E")) and !puzzle and !obj_player.muda_inventario and !global.player_ocupado{
        		switch (image_index) {
                    case 0:
                        if primeiraInteracao{
                            primeiraInteracao = false
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 12})
                        }else{
                            instance_create_layer(x,y,"Instances",obj_texto, { tipo: 13})
                            puzzle = true
                        }
                        break
                    case 1: 
                        audio_play_sound(aud_pegando_item,0,false,global.volume)
                        instance_create_layer(x,y,"Instances",obj_texto, { tipo: 15})
                        global.inventario[global.slotColocar] = spr_invChaveQuarto
                        global.inventario_nomes[global.slotColocar] = "Chave(????)"
                        global.slotColocar++
                        global.puzzle_caixa_chave = true
                        image_index++
                        break
                }
        	}
        }
    }else{
		obj_player.muda_botao = false
		ativado = false
	}
}