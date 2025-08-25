// Auto-generated stubs for each available event.

function Sequence3_event_create()
{
    audio_stop_sound(aud_andando)
    frame = 0
    global.player_ocupado = true
    global.player_cutscene = Andar
    audio_play_sound(aud_andando,0,true,global.volume)
}

function Sequence3_event_destroy()
{

}

function Sequence3_event_clean_up()
{

}

function Sequence3_event_step()
{
    if global.cutscene_passadas>=3{
        audio_stop_sound(aud_andando)
        if global.transicao_ativa or global.retomada{
        	instance_create_layer(global.player_ultimoX,global.player_ultimoY,"Instances",obj_player)
        }else{
            instance_create_layer(144,507,"Instances",obj_player)
        }
        global.player_ocupado = false
        global.player_cutscene = noone
        layer_destroy("Animacao")
    }else{
    frame++
        if frame >=238{
            audio_stop_sound(aud_andando)
            instance_create_layer(270,440,"Instances",obj_player)
            global.player_ocupado = false
            global.player_cutscene = noone
            global.cutscene_passadas = 3
            instance_create_layer(270,440,"Instances",obj_texto, { tipo: 32})
            layer_destroy("Animacao")
        }
    }
}

function Sequence3_event_step_begin()
{

}

function Sequence3_event_step_end()
{

}

function Sequence3_event_async_system()
{

}