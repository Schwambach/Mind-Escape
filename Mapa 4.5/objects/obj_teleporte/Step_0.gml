if(place_meeting(x,y,obj_player)){
    if(!bloqueado){
        bloqueado=true
        room=localizacao    
    }
}

if(bloqueado){
    if (distance_to_object(obj_player) > 32) {
        bloqueado = false
    }
}