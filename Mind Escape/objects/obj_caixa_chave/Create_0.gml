depth = -y
image_speed = 0
ativado = true
puzzle = false
colocandoSenha = false
primeiraInteracao = true

linha = 0
coluna = 0

numeros = [
    [1, noone, noone, 2, 5, 7, noone, noone, noone],
    [7, 8, noone, noone, 3, 4, noone, noone, noone],
    [noone, noone, 5, 8, noone, 9, noone, noone, 3],
    [8, 5, 4, 3, 9, 6, noone, 1, noone],
    [noone, noone, noone, noone, noone, noone, noone, noone, noone],
    [noone, noone, 3, 5, 7, noone, 6, 9, noone],
    [noone, noone, noone, noone, noone, noone, noone, 6, 2],
    [4, noone, 7, noone, 6, noone, noone, 8, 1],
    [noone, noone, 8, noone, noone, 2, 9, 7, 5]
];

respostas = [
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
    [noone,noone,noone,noone,noone,noone,noone,noone,noone],
];

senhaColocada = [1,1,1,1,1,1,5]
senhaCorreta = [2,2,3,9,9,1,5]
posicaoSenha = 0

if global.puzzle_caixa_chave {
    image_index = 2
    ativado = false
}