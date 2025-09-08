// Auto-generated stubs for each available event.

function Sequence4_event_create()
{
    audio_stop_sound(aud_andando)
    frame = 0
    global.player_ocupado = true
    global.player_cutscene = Andar
}

function Sequence4_event_destroy()
{

}

function Sequence4_event_clean_up()
{

}

function Sequence4_event_step()
{
    if frame<=90{
        frame++
        if frame>=90{
            frame = 91
            global.player_cutscene = Player
            audio_stop_sound(aud_andando)
            layer_sequence_pause(global.seq_id)
        }
    }else if frame>=90 and frame<=120{
        frame++
        if frame>=120{
            frame=121
            layer_sequence_pause(global.seq_id)
        }
    }else if frame>=120 and frame <=299{
        global.explodir_stahnke = true
        frame++
        if frame>=299{
            audio_stop_sound(aud_andando)
            instance_create_layer(150,250,"Instances_1",obj_combate)
            global.stahnke_cutscene = spr_stanhkinho2_2
            global.player_cutscene = Player
            global.player_combate = true
            layer_sequence_pause(global.seq_id)
        }
    }
}

function Sequence4_event_step_begin()
{

}

function Sequence4_event_step_end()
{

}

function Sequence4_event_async_system()
{

}