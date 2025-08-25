draw_set_font(Font_dialogo)
if puzzle {
    //instruções
    draw_text(10, 10, "Setas = Para selecionar e alterar valor")
    draw_text(10 ,40, "'F' = Alternar entre senha e sudoku")
    draw_text(10 ,70, "Clique o número no seu teclado para preencher")
    draw_text(10, 100, "Use seta cima/baixo para alterar o valor da senha")
    draw_text(10,130,"Clique Enter para confirmar a senha")
     
    
    //folhas
    draw_sprite(spr_puzzle,0,555,250)
    draw_sprite_ext(spr_posi_senha,0,1300,500,5,5,0,c_white,1)
    
    //Borda azul no sudoku
    if !colocandoSenha {
    	draw_sprite(spr_selecionadoSudoku,0,559+(55*coluna),254+(55*linha))
    }
    
    //Preencher com numeros o sudoku
    for (var l = 0; l < 9; l++) {
    	for (var c = 0; c < 9; c++) {
            if numeros[l][c] != noone{
                draw_text_color(579+(55*c), 274+(55*l), string(numeros[l][c]),c_black,c_black,c_black,c_black,1)
            }else if respostas[l][c] != noone{
                draw_text_color(579+(55*c), 274+(55*l), string(respostas[l][c]),c_teal,c_teal,c_teal,c_teal,1)
            }
        }
    }
    
    //slots senha
    draw_sprite_ext(spr_slotsSenha,0,555,800,3,3,0,c_white,1)
    //Borda azul na senha
    if colocandoSenha {
    	draw_sprite_ext(spr_selecionadoSenha,0,576+(36*posicaoSenha),821,3,3,0,c_white,1)
    }
    //Preencher com números a senha
    for (var i = 0; i < 7; i++) {
    	draw_text(591+(36*i),856,string(senhaColocada[i]))
    }
    
}
draw_set_font(-4)