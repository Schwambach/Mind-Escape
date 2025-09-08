if(place_meeting(x,y,obj_player)){
    if(!bloqueado){
        bloqueado=true
        global.sala_atual = tipo
        if localizacao==Cozinha{
            global.sala_antes_cozinha = locTP
        }
        room=localizacao    
    }
}

if(bloqueado){
    if (distance_to_object(obj_player) > 32) {
        bloqueado = false
    }
}