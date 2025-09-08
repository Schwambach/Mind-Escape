global.stahnke_ultimoX = x
global.stahnke_ultimoY = y

if global.stahnke_cutscene != noone{
    sprite_index = global.stahnke_cutscene
    if global.stahnke_cutscene == spr_stanhkinho2_Andar_2{
        image_speed = 1
    }else if global.stahnke_cutscene == spr_stanhkinho2_2{
        image_speed = 0
    }
}

if tipo == 1 and global.explodir_stahnke {
    instance_destroy(self)
}