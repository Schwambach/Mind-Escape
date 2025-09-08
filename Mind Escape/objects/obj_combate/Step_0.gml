x = camera_get_view_x(cam)+32
y = camera_get_view_y(cam)+100

global.cooldown--
if global.turnoStahnke{
    if global.cooldown <= 0{
        image_index = 1
    }
}else if !global.turnoStahnke{
    image_index = 0
}

if global.atacar and (global.player_ultimoX+trajetoriaX) < global.stahnke_ultimoX and global.slotColocar>=0{
    trajetoriaX += ((global.player_ultimoX-global.stahnke_ultimoX)/100) * -1
    trajetoriaY += ((global.player_ultimoY-(global.stahnke_ultimoY-10))/100) * -1
    rodando += 7.2
}
if (global.player_ultimoX+trajetoriaX) >= global.stahnke_ultimoX and global.atacar{
    global.slotColocar--
    global.atacar = false
    vidaStahnke -= 100/10
    ponto_finalX = trajetoriaX
    ponto_finalY = trajetoriaY
    audio_play_sound(aud_dano,0,false,global.volume)
    rodando = 0    
    global.turnoStahnke = true
}

if global.turnoStahnke and global.cooldown <= 0{
    trajetoriaX -= ((global.player_ultimoX-global.stahnke_ultimoX)/100) * -1
    trajetoriaY -= ((global.player_ultimoY-(global.stahnke_ultimoY-10))/100) * -1
    rodando += 7.2
}

if (global.player_ultimoX+trajetoriaX) <= global.player_ultimoX and global.turnoStahnke{
    global.turnoStahnke = false
    vidaJorginho -= 100/10
    audio_play_sound(aud_dano,0,false,global.volume)
    if itemJogado == spr_copo{
        itemJogado = spr_notebook
    }else{
        itemJogado = spr_copo
    }
}

if global.slotColocar < 0 and !global.turnoStahnke and global.cooldown <= 0{
    global.turnoStahnke = true
    global.cooldown = 90
    trajetoriaX = ponto_finalX
    trajetoriaY = ponto_finalY
}

if vidaJorginho <= 0{
    room = Fim_provisorio
}
if vidaStahnke <= 0{
    global.jorginhoGanhou = true
    room = Fim_provisorio
}