depth = -10
image_speed = 0

switch (local){ 
    case 0 : /*Quarto pra cozinha*/
        image_index = 0
        ativado = true
        tentativa = global.etapaPortaQuarto
    break
    case 1 :/*Cozinha pro banheiro/quarto e banheiro pra cozinha*/
        image_index = 1
        ativado = false
    break
}

if global.destruir_porta>=0 {
    image_index = 1
    ativado = false
}