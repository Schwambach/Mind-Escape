//Tela cheia ou janela
global.tela_cheia = false

//Som
global.volume = 1

//Bloquear interações
global.player_ocupado = false
global.player_dialogo = false

//Quebrar portas
global.destruir_porta = -1

//Inventario
global.inventario = [noone,noone,noone,noone,noone,noone,noone,noone,noone,noone,noone,noone]
global.inventario_nomes = ["","","","","","","","","","","",""]
global.slotColocar = 0

//Cutscene
global.player_cutscene = noone
global.transicao_ativa = false
global.retomada = false

//Salvamento
global.sala_atual = 1 //1=quarto 2=cozinha 3=banheiro 4=sala
global.player_ultimoX = 0
global.player_ultimoY = 0
global.cutscene_passadas = 0 //1=quarto 2=cozinha 3=sala
global.sala_antes_cozinha = 1 //1=quarto 2=cozinha 3=banheiro 4=sala
global.puzzle_caixa_chave = false
global.puzzle_ventilacao = false
global.puzzle_pia = false
global.fala_geladeira = false
global.faca_pega = false
global.desentupidor_pego = false
global.grampo_pego = false
global.cortina_aberta = false
global.ferramentas_pegas = false
global.etapaPortaQuarto = 0
global.etapaPortaCozinha = 0
global.etapaElevadorSala = 0

function Carregar(){
    if file_exists("save.sav"){
        ini_open("save.sav")

        // Sala e posição
        global.sala_atual = ini_read_real("sala","sala_atual",1)
        global.player_ultimoX = ini_read_real("player","x_player",0)
        global.player_ultimoY = ini_read_real("player","y_player",0)
        global.cutscene_passadas = ini_read_real("player","cutscene_passadas",0)
        global.sala_antes_cozinha = ini_read_real("player","sala_antes_cozinha",1)

        // Configurações
        global.tela_cheia = ini_read_real("config","tela_cheia",0)
        window_set_fullscreen(global.tela_cheia)
        global.volume = ini_read_real("config","volume",1)

        // Inventário
        for(var i=0; i<array_length(global.inventario); i++){
            global.inventario[i] = ini_read_real("inventario","slot" + string(i), noone)
            global.inventario_nomes[i] = ini_read_string("inventario_nomes","slot" + string(i),"")
        }

        // Player estados
        global.destruir_porta = ini_read_real("estado","destruir_porta",-1)
        global.slotColocar = ini_read_real("estado","slotColocar",0)

        // Puzzles e itens
        global.puzzle_caixa_chave = ini_read_real("puzzles","caixa_chave",0)
        global.puzzle_ventilacao  = ini_read_real("puzzles","ventilacao",0)
        global.puzzle_pia         = ini_read_real("puzzles","pia",0)

        global.fala_geladeira     = ini_read_real("itens","fala_geladeira",0)
        global.faca_pega          = ini_read_real("itens","faca_pega",0)
        global.desentupidor_pego  = ini_read_real("itens","desentupidor_pego",0)
        global.grampo_pego        = ini_read_real("itens","grampo_pego",0)
        global.cortina_aberta     = ini_read_real("itens","cortina_aberta",0)
        global.ferramentas_pegas  = ini_read_real("itens","ferramentas_pegas",0)

        // Etapas de portas
        global.etapaPortaQuarto = ini_read_real("portas","etapa_quarto",0)
        global.etapaPortaCozinha = ini_read_real("portas","etapa_cozinha",0)

        ini_close()
    }
}

function Salvar(){
    if(file_exists("save.sav")) file_delete("save.sav")
    ini_open("save.sav")

    // Sala e posição
    ini_write_real("sala","sala_atual",global.sala_atual)
    ini_write_real("player","x_player",global.player_ultimoX)
    ini_write_real("player","y_player",global.player_ultimoY)
    ini_write_real("player","cutscene_passadas",global.cutscene_passadas)
    ini_write_real("player","sala_antes_cozinha",global.sala_antes_cozinha)

    // Configurações
    ini_write_real("config","tela_cheia",global.tela_cheia)
    ini_write_real("config","volume",global.volume)

    // Inventário
    for(var i=0; i<array_length(global.inventario); i++){
        ini_write_real("inventario","slot" + string(i), global.inventario[i])
        ini_write_string("inventario_nomes","slot" + string(i), global.inventario_nomes[i])
    }

    // Player estados
    ini_write_real("estado","destruir_porta",global.destruir_porta)
    ini_write_real("estado","slotColocar",global.slotColocar)

    // Puzzles e itens
    ini_write_real("puzzles","caixa_chave",global.puzzle_caixa_chave)
    ini_write_real("puzzles","ventilacao",global.puzzle_ventilacao)
    ini_write_real("puzzles","pia",global.puzzle_pia)

    ini_write_real("itens","fala_geladeira",global.fala_geladeira)
    ini_write_real("itens","faca_pega",global.faca_pega)
    ini_write_real("itens","desentupidor_pego",global.desentupidor_pego)
    ini_write_real("itens","grampo_pego",global.grampo_pego)
    ini_write_real("itens","cortina_aberta",global.cortina_aberta)
    ini_write_real("itens","ferramentas_pegas",global.ferramentas_pegas)

    // Etapas de portas
    ini_write_real("portas","etapa_quarto",global.etapaPortaQuarto)
    ini_write_real("portas","etapa_cozinha",global.etapaPortaCozinha)

    ini_close()
}

function Resetar(){
    if(file_exists("save.sav")) file_delete("save.sav")
    ini_open("save.sav")

    // Resetar sala e player
    ini_write_real("sala","sala_atual",1)
    ini_write_real("player","x_player",0)
    ini_write_real("player","y_player",0)
    ini_write_real("player","cutscene_passadas",0)
    ini_write_real("player","sala_antes_cozinha",1)
    
    // Configurações
    ini_write_real("config","tela_cheia",global.tela_cheia)
    ini_write_real("config","volume",global.volume)

    // Reset inventário
    for(var i=0; i<array_length(global.inventario); i++){
        ini_write_real("inventario","slot" + string(i), noone)
        ini_write_string("inventario_nomes","slot" + string(i),"")
    }

    // Reset estados
    ini_write_real("estado","destruir_porta",-1)
    ini_write_real("estado","slotColocar",0)

    // Reset puzzles e itens
    ini_write_real("puzzles","caixa_chave",0)
    ini_write_real("puzzles","ventilacao",0)
    ini_write_real("puzzles","pia",0)

    ini_write_real("itens","fala_geladeira",0)
    ini_write_real("itens","faca_pega",0)
    ini_write_real("itens","desentupidor_pego",0)
    ini_write_real("itens","grampo_pego",0)
    ini_write_real("itens","cortina_aberta",0)
    ini_write_real("itens","ferramentas_pegas",0)

    // Reset etapas de portas
    ini_write_real("portas","etapa_quarto",0)
    ini_write_real("portas","etapa_cozinha",0)

    ini_close()
    Carregar()
}

//Carregamento
Carregar()
window_set_fullscreen(global.tela_cheia)
