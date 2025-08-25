// Auto-generated stubs for each available event.

function Sequence1_event_create()
{
    frame = 0
    global.player_ocupado = true
}

function Sequence1_event_destroy()
{
    
}

function Sequence1_event_clean_up()
{
    
}

function Sequence1_event_step()
{
    if global.cutscene_passadas>=1{
        if global.transicao_ativa or global.retomada{
        	instance_create_layer(global.player_ultimoX,global.player_ultimoY,"Instances",obj_player)
        }else{
            instance_create_layer(70,335,"Instances",obj_player)
        }
        global.player_ocupado = false
        global.player_cutscene = noone
        layer_destroy("Animacao")
    }else{
        frame++
        if frame >=298{
            instance_create_layer(271,314,"Instances",obj_player)
            global.player_ocupado = false
            global.cutscene_passadas = 1
            instance_create_layer(271,314,"Instances",obj_texto, { tipo: 0})
            layer_destroy("Animacao")
        }
    }
}

function Sequence1_event_step_begin()
{

}

function Sequence1_event_step_end()
{

}

function Sequence1_event_async_system()
{

}