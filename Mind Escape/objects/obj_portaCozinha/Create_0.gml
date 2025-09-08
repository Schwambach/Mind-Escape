depth = -y
image_speed = 0
ativado = true
destrancou = false
semChave = true
etapaPorta = global.etapaPortaCozinha
semGrampo = true

puzzle = false

barrinha = 47
sobeDesce = 1
acertos = 0
erros = 0

if global.destruir_porta>=1 {
    image_index = 1
    ativado = false
}