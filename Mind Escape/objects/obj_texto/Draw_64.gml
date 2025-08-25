draw_set_font(Font_dialogo)
var _texto = string_copy(texto[posicao],0,indice)

draw_sprite_ext(spr_caixaFala,0,624,780,6,6,0,c_white,1)
draw_text_ext_color(666,805,_texto,25,578,c_black,c_black,c_black,c_black,1)

if(fim_fala){
    draw_text_color(910,950,"Espaço Para Continuar",c_black,c_black,c_black,c_black,1)
}
if imagem != noone{
    draw_sprite(imagem,0,960,540)
}
draw_set_font(-4)