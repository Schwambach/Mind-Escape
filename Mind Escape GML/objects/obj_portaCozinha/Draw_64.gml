
if puzzle{
    draw_sprite_ext(spr_medidor_de_tensao_grampo,0,1435,750,5,5,0,c_white,1)
    draw_sprite_ext(spr_indicador_grampo,0,1435,750+(barrinha*-5),5,5,0,c_white,1)
    if keyboard_check(ord("F")){
        draw_sprite_ext(spr_grampo,0,960,580,5,5,-47,c_white,1)
    }else{
        draw_sprite_ext(spr_grampo,0,960,580,5,5,-94+(barrinha),c_white,1)
    }
    draw_set_font(Font_dialogo)
    draw_text(555,900,"Aperte 'F' quando ele estiver no verde")
    draw_text(555,930,string(acertos)+"/5 Acertos")
    draw_set_font(-4)
}