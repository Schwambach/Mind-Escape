if ativado {
    if image_index==0 {
        if place_meeting(x, y+8, obj_player) and !global.player_dialogo{
            if !puzzle{
        	    obj_player.muda_botao = true
            }
            //puzzle
            if puzzle and cliques<100 {
                if keyboard_check_pressed(ord("F")) {
                    audio_play_sound(aud_desentupidor,0,false,global.volume)
                    cliques+=10
                }
                if cliques>0{
                    cliques--
                }
                if cliques > 99 {
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 23})
                	puzzle=false
                    ativado=false
                    image_index = 1
                    global.inventario[global.slotColocar] = spr_invChaveCozinha
                    global.inventario_nomes[global.slotColocar] = "Chave(????)"
                    global.slotColocar++
                    global.puzzle_pia = true
                }
            }
            
            if keyboard_check(vk_escape) and puzzle{
                puzzle = false
            }
            
            if keyboard_check_pressed(ord("E")) and !puzzle and !global.player_ocupado{
                for (var i = 0; i < 12; i++) {
                	if (global.inventario[i] == spr_invDesentupidor) {
                    	instance_create_layer(x,y,"Instances",obj_texto, { tipo: 22})
                        puzzle = true
                    }
                }
                if !puzzle {
                    instance_create_layer(x,y,"Instances",obj_texto, { tipo: 21})
                }
            }
        }
    }
}