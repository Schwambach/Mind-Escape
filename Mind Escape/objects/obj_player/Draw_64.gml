draw_set_font(Font)
draw_set_color(c_black)
//6 blocos de 232x232 com 3 linhas
if muda_inventario{
    //Desenho
        //fundo
    	draw_rectangle_color(128,128,1792,952,0,0,0,0,0)
        draw_rectangle_color(128,128,1792,952,#880000,#880000,#110000,#110000,1)
    	draw_rectangle_color(160,160,1760,920,#880000,#880000,#110000,#110000,0) 
    
        //titulo
        draw_text(190,176,"INVENTÁRIO")

    //linha 1
draw_rectangle_color(190,276,422,546,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(200,286,412,496,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(452,276,684,546,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(462,286,674,496,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(712,276,944,546,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(722,286,934,496,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(974,276,1206,546,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(984,286,1196,496,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(1235,276,1467,546,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(1245,286,1457,496,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(1497,276,1729,546,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(1507,286,1719,496,#880000,#880000,#110000,#110000,0)

//linha 2
draw_rectangle_color(190,586,422,858,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(200,596,412,808,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(452,586,684,858,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(462,596,674,808,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(712,586,944,858,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(722,596,934,808,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(974,586,1206,858,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(984,596,1196,808,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(1235,586,1467,858,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(1245,596,1457,808,#880000,#880000,#110000,#110000,0)
draw_rectangle_color(1497,586,1729,858,c_black,c_black,c_black,c_black,0)
draw_rectangle_color(1507,596,1719,808,#880000,#880000,#110000,#110000,0)
    
	//objetos
        //linha 1
        draw_set_font(Font_inv)
        draw_set_color(#880000)
    	if (global.inventario[0] != noone){
    		draw_sprite_ext(global.inventario[0],0,190,276,2,2,0,c_white,1)
            draw_text(200,506,global.inventario_nomes[0])
    	}
    	if (global.inventario[1] != noone){
    		draw_sprite_ext(global.inventario[1],0,452,276,2,2,0,c_white,1)
            draw_text(462,506,global.inventario_nomes[1])
    	}
    	if (global.inventario[2] != noone){
    		draw_sprite_ext(global.inventario[2],0,712,276,2,2,0,c_white,1)
            draw_text(722,506,global.inventario_nomes[2])
    	}
    	if (global.inventario[3] != noone){
    		draw_sprite_ext(global.inventario[3],0,974,276,2,2,0,c_white,1)
            draw_text(984,506,global.inventario_nomes[3])
    	}
    	if (global.inventario[4] != noone){
    		draw_sprite_ext(global.inventario[4],0,1235,276,2,2,0,c_white,1)
            draw_text(1245,506,global.inventario_nomes[4])
    	}
    	if (global.inventario[5] != noone){
    		draw_sprite_ext(global.inventario[5],0,1497,276,2,2,0,c_white,1)
            draw_text(1507,506,global.inventario_nomes[5])
    	}
    
        //linha 2
        if (global.inventario[6] != noone){
    		draw_sprite_ext(global.inventario[6],0,190,586,2,2,0,c_white,1)
            draw_text(200,818,global.inventario_nomes[6])
    	}
        if (global.inventario[7] != noone){
    		draw_sprite_ext(global.inventario[7],0,452,586,2,2,0,c_white,1)
            draw_text(462,818,global.inventario_nomes[7])
    	}
        if (global.inventario[8] != noone){
    		draw_sprite_ext(global.inventario[8],0,712,586,2,2,0,c_white,1)
            draw_text(722,818,global.inventario_nomes[8])
    	}
        if (global.inventario[9] != noone){
    		draw_sprite_ext(global.inventario[9],0,974,586,2,2,0,c_white,1)
            draw_text(984,818,global.inventario_nomes[9])
    	}
        if (global.inventario[10] != noone){
    		draw_sprite_ext(global.inventario[10],0,1235,586,2,2,0,c_white,1)
            draw_text(1245,818,global.inventario_nomes[10])
    	}
        if (global.inventario[11] != noone){
    		draw_sprite_ext(global.inventario[11],0,1497,586,2,2,0,c_white,1)
            draw_text(1507,818,global.inventario_nomes[11])
    	}
}
draw_set_font(-4)
draw_set_color(c_white)
draw_set_font(Font_dialogo)

if !global.player_dialogo and !global.player_ocupado{
    draw_text(20,20,"WASD - Use para se mover pelo mapa")
    draw_text(20,50,"E - Use para interagir com o mapa")
    draw_text(20,80,"I - Use para abrir o inventário")
}

draw_set_font(-4)