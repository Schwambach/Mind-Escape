if string_length(texto[posicao]) <= indice{
    fim_fala = true
    
    if keyboard_check(vk_space) and posicao == posicao_max{
        global.player_dialogo = false
        instance_destroy(self)
    }else if keyboard_check(vk_space){
        global.player_dialogo = true
        fim_fala = false
        indice = 0
        posicao++
    }
}else{
    indice+=0.75
    if (indice%3) == 0{
        audio_play_sound(aud_dialogo,0,false,global.volume)
    }
}

//atalho pra pular dialogo *admin*
if keyboard_check(vk_end){
    global.player_dialogo = false
    fim_fala = false
    indice = 0
    instance_destroy(self)
}