cooldown--

if(cooldown <= 72 and ativado){
	image_xscale = tamanhoOriginalX
	image_yscale = tamanhoOriginalY
}

if (cooldown <= 0 and ativado){
	if (tipo == 3){
		game_end()
	}else if(tipo == 4){
		window_set_fullscreen(!global.tela_cheia)
		global.tela_cheia = !global.tela_cheia
	}else if tipo == 5{
        Salvar()
    }else if tipo == 7{
        global.transicao_ativa = true
        Resetar()
        audio_stop_sound(aud_menu)
        room = lugar
    }else if tipo == 8{
        global.transicao_ativa = true
        Salvar()
        room = lugar
    }else if tipo == 9{
        Salvar()
        game_end()
    }else if tipo == 0{
        global.transicao_ativa = true
        Carregar()
        audio_stop_sound(aud_menu)
		room = lugar
    }else if tipo == 6{
        global.retomada = true
        room = lugar
    }else {
        global.transicao_ativa = true
		room = lugar
	}
	ativado = false
}