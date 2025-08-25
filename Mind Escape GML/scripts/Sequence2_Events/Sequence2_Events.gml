// Auto-generated stubs for each available event.

function Sequence2_event_create()
{
    audio_stop_sound(aud_andando)
    frame = 0
    global.player_ocupado = true
    global.player_cutscene = Andar
    audio_play_sound(aud_andando,0,true,global.volume)
}

function Sequence2_event_destroy()
{

}

function Sequence2_event_clean_up()
{

}

function Sequence2_event_step()
{
    if global.cutscene_passadas>=2{
        audio_stop_sound(aud_andando)
        if global.transicao_ativa or global.retomada {
        	instance_create_layer(global.player_ultimoX,global.player_ultimoY,"Instances",obj_player)
        }else{
            switch global.sala_antes_cozinha {
            	case 1:
                    instance_create_layer(370,364,"Instances",obj_player)
                break
                case 3:
                    instance_create_layer(64,175,"Instances",obj_player)
                break
                case 4:
                    instance_create_layer(111,127,"Instances",obj_player)
                break
            }
        }
        global.player_ocupado = false
        global.player_cutscene = noone
        layer_destroy("Animacao")
    }else{
        frame++
        if frame >=238{
            audio_stop_sound(aud_andando)
            instance_create_layer(186,272,"Instances",obj_player)
            global.player_ocupado = false
            global.player_cutscene = noone
            global.cutscene_passadas = 2
            instance_create_layer(186,272,"Instances",obj_texto, { tipo: 16})
            layer_destroy("Animacao")
        }
    }
}


function Sequence2_event_step_begin()
{

}

function Sequence2_event_step_end()
{

}

function Sequence2_event_async_system()
{

}