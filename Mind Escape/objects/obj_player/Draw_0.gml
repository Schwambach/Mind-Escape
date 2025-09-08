draw_self()

draw_sprite_ext(Piscar,muda_piscar,x,y,image_xscale,image_yscale,0,c_white,1)

if muda_botao{
	if (keyboard_check(ord("E"))){
		index_botao = 1
	}else{
		index_botao = 0
	}
	draw_sprite(Botao,index_botao,x,y)
}