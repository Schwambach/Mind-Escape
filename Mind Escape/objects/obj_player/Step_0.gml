depth = -y;
if global.player_cutscene != noone{
    sprite_index = global.player_cutscene
}
if !global.player_ocupado and !global.player_dialogo{
    if !muda_inventario{
        if keyboard_check_pressed(vk_escape){
            room=Pausado
        }
        moveh = -keyboard_check(ord("A")) +keyboard_check(ord("D"))
        movev = -keyboard_check(ord("W")) +keyboard_check(ord("S"))
        hsp = moveh * velocidade
        vsp = movev * velocidade
        if place_meeting(x+hsp,y,obj_colisao){
        	while !place_meeting(x+sign(hsp),y,obj_colisao){
        		x+=sign(hsp)
        	}
        	hsp = 0;
        }	
        if place_meeting(x,y+vsp,obj_colisao){
        	while !place_meeting(x,y+sign(vsp),obj_colisao){
        		y+=sign(vsp)
        	}
        	vsp = 0;
        }	
        global.player_ultimoX = x
        global.player_ultimoY = y
        x+=hsp
        y+=vsp
        
        if(hsp!=0){
        	image_xscale=sign(hsp)
        }
        
        if(moveh!=0 or movev!=0){
        	sprite_index=Andar
            if !audio_andando{
                audio_play_sound(aud_andando,0,true,global.volume)
                audio_andando = true
            }
        }else{
        	sprite_index=Player
            audio_andando = false
            audio_stop_sound(aud_andando)
        }
        
        //Botão Interação
        if !place_meeting(x,y,all){
        	muda_botao = false	
        }
    }
    
    //inventario
    if keyboard_check_pressed(ord("I")){
    	muda_inventario = !muda_inventario
    }
    
}else{
    muda_botao = false
    muda_inventario = false
}

//Piscar
muda_piscar+=0.3
if(muda_piscar>50){
    muda_piscar = 0
}
