tamanhoOriginalX = image_xscale
tamanhoOriginalY = image_yscale
cooldown = 0
ativado = false
cooldownMax = 80

switch (tipo){
	case 0 :
        Carregar()
		nome = "jogar"
        switch (global.sala_atual) {
        	case 1:
                lugar = Quarto
            break
            case 2:
                lugar = Cozinha
            break
            case 3:
                lugar = Banheiro
            break
            case 4:
                lugar = Sala
            break
        }
		sprite_index = spr_botaoJogar
		break
	case 1 :
		nome = "Conquistas"
		lugar = Tela_Classificacao
		sprite_index = spr_botaoConquistas
		break
	case 2 :
		nome = "Opcoes"
		lugar = Tela_Opcoes
		sprite_index = spr_botaoOpcoes
		break
	case 3 :
		nome = "Sair"
		sprite_index = spr_botaoSair
		break
	case 4 :
		nome = "Tela Cheia"
		sprite_index = spr_botaoExtenderTela
		break
    //Menu de Pausa
    case 5 :
        nome = "Salvar"
        sprite_index = spr_botaoSalvar
        cooldownMax = 40
        break
    case 6 :
		nome = "Retomar"
        switch (global.sala_atual) {
        	case 1:
                lugar = Quarto
            break
            case 2:
                lugar = Cozinha
            break
            case 3:
                lugar = Banheiro
            break
            case 4:
                lugar = Sala
            break
        }
		sprite_index = spr_botaoRetomar
        cooldownMax = 40
		break
    case 7 :
        nome = "Novo Jogo"
        sprite_index = spr_botaoNovoJogo
        lugar = Quarto
        break
    case 8 :
        nome = "Salvar e Menu Inicial"
        sprite_index = spr_botaoSalvarMenu
        lugar = Tela_Inicial
        break
    case 9 :
        nome = "Salvar e Sair"
        sprite_index = spr_botaoSalvarSair
        cooldownMax = 40
        break
}