draw_set_font(Font_dialogo)
if puzzle {
    draw_sprite_ext(spr_ventilacao_puzzle,image_index,555,250,10,10,0,c_white,1)
    if image_index<4{
        draw_healthbar(1480,265,1590,734,tensao,0,c_green,c_red,3,0,0)
        draw_sprite_ext(spr_medidor_de_tensao,0,1535,750,5,5,0,c_white,1)
        draw_healthbar(555,850,1365,880,progresso,0,#404040,#404040,0,0,1)
        draw_text(1465,775,"Aperte 'F'")
        draw_text(555,900,string(image_index) + "/4 Parafusos")
    }
}
draw_set_font(-4)