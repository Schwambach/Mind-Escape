if puzzle{
    draw_sprite_ext(spr_puzzle_fios,0,960,540,3,3,0,c_white,1)
    draw_sprite_ext(spr_puzzle_fios_selecionado,0,960+(438*posiColuna),540+(225*posiLinha),3,3,0,c_white,1)
    
    //Linhas
    if selecionadoPrimeiro{
        draw_line_width_color(816,312,1104,312+(225*confirmadoPrimeiro),6,c_red,c_red)
    }
    if selecionadoSegundo{
        draw_line_width_color(816,537,1104,312+(225*confirmadoSegundo),6,c_green,c_green)
    }
    if selecionadoTerceiro{
        draw_line_width_color(816,762,1104,312+(225*confirmadoTerceiro),6,c_blue,c_blue)
    }
    draw_set_font(Font_puzzle_fios)
        if valorAtual<10{
            draw_text_color(915,837,string(valorAtual)+"0",c_green,c_green,c_green,c_green,1)
        }else{
            draw_text_color(915,837,string(valorAtual),c_green,c_green,c_green,c_green,1)
        }
    draw_set_font(-4)
}