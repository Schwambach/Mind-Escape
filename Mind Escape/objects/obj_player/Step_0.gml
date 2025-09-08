depth = -y
global.player_ultimoX = x
global.player_ultimoY = y
if global.player_cutscene != noone{
    sprite_index = global.player_cutscene
    if global.player_cutscene == Andar and !audio_andando{
        audio_play_sound(aud_andando,0,true,global.volume)
        audio_andando = true
    }else if global.player_cutscene == Player{
        audio_andando = false
        audio_stop_sound(aud_andando)
    }
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
    }else if global.player_cutscene == noone{
        sprite_index=Player
        audio_stop_sound(aud_andando)
    }
    
    //inventario
    if keyboard_check_pressed(ord("I")){
    	muda_inventario = !muda_inventario
    }
    
}else{
    muda_botao = false
    muda_inventario = false
}

if global.seq_id != noone{
    switch (global.dialogo_posicao) {
    	case 2:
            layer_sequence_play(global.seq_id)
            global.dialogo_posicao = 0
            audio_pause_sound(aud_trilha_sonora)
            audio_play_sound(aud_stahnke,0,true,global.volume)
        break
        case 4:
            layer_sequence_play((global.seq_id))
            global.dialogo_posicao = 0
            global.player_cutscene = Andar
            global.stahnke_cutscene = spr_stanhkinho2_Andar_2
        break
    }
}

//variaveis camera
var cam   = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// alvo base (posição do player)
var alvo_x = x - cam_w/2;
var alvo_y = y - cam_h/2;

// Se está em combate → aplica offset e usa suavização (lerp)
if (global.player_combate) {
    var offset_x = 65; // desloca pra direita
    var offset_y = 10; // desloca pra cima
    alvo_x += offset_x;
    alvo_y += offset_y;

    // pega posição atual da câmera
    var cx = camera_get_view_x(cam);
    var cy = camera_get_view_y(cam);

    // suaviza (0.05 é a "força" da suavização)
    alvo_x = lerp(cx, alvo_x, 0.05);
    alvo_y = lerp(cy, alvo_y, 0.05);
}

// define posição final da câmera
camera_set_view_pos(cam, alvo_x, alvo_y);

//Piscar
muda_piscar+=0.3
if(muda_piscar>50){
    muda_piscar = 0
}
