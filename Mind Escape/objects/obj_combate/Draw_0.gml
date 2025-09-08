draw_self()

if global.atacar and (global.player_ultimoX+trajetoriaX) < global.stahnke_ultimoX and global.slotColocar>=0{
    draw_sprite_ext(global.inventario[global.slotColocar], 0, global.player_ultimoX+trajetoriaX, global.player_ultimoY+trajetoriaY, 0.15,0.15,rodando,c_white,1)
}
if global.turnoStahnke and (global.player_ultimoX+trajetoriaX) > global.player_ultimoX and global.cooldown<=0{
    draw_sprite_ext(itemJogado, 0, global.player_ultimoX+trajetoriaX, global.player_ultimoY+trajetoriaY, 0.15,0.15,rodando,c_white,1)
}