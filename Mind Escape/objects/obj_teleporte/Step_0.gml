if(place_meeting(x,y,obj_player)){
    if(!bloqueado){
        bloqueado=true
        global.sala_atual = tipo
        if room==Cozinha{
            global.sala_antes_cozinha = tipo
        }
        room=localizacao    
    }
}

if(bloqueado){
    if (distance_to_object(obj_player) > 32) {
        bloqueado = false
    }
}