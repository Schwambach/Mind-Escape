draw_set_font(Font_dialogo)
if puzzle{
    draw_healthbar(1380,265,1490,734,cliques,0,c_red,c_green,3,0,0)
    draw_sprite_ext(spr_medidor_de_tensao,0,1435,750,5,5,0,c_white,1)
    if keyboard_check(ord("F")) and !global.player_dialogo{
        draw_sprite_ext(spr_piaDesentupindo, 0, 820, 480, 8, 8, 0, c_white, 1)
    }else{
        draw_sprite_ext(spr_piaDesentupindo, 1, 820, 480, 8, 8, 0, c_white, 1)
    }
    draw_text(555,900,"Aperte 'F' várias vezes para desentupir a pia")
}
draw_set_font(-4)