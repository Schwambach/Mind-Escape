imagem = noone
switch(tipo){
    case 0:
        //acordou no Quarto
        texto = [
            "Que sono bom da miséria, parece que dormi o melhor sono da minha vida",
            "Mas espera um segundo, onde é que eu estou, que lugar é esse?",
            "Parando pra pensar, tenho uma pergunta melhor, QUEM SOU EU???",
            "Vou deixar pra surtar outra hora, primeiro eu tenho que me organizar",
            "Acho que estou em um quarto, eu tenho que dar uma olhada ao redor",
            "Tenho que tentar sair daqui e saber se alguém me conhece nessa casa"
            ]
        posicao_max = 5
    break
    
    //Interações com a porta do Quarto
    case 1:
        //primeira interação com a porta
        texto = [
            "*Tenta forçar a abertura da porta*",
            "Essa porcaria de porta está trancada com um cadeado, só faltava estar emperrada também",
            "Eu preciso achar algo pra abrir essa porta, uma chave ou qualquer tralha que abra ela",
            "Deve ter algo nesse quarto que eu possa usar",
            "Dica: Se quiser ver seu inventário clique I"
            ]
        posicao_max = 4
    break
    case 2:
        //interação com a porta sem nada
        texto = [
            "aaah...",
            "Não acho que eu deva perder meu tempo e energia forçando a porta"
            ]
        posicao_max = 1
    break
    case 3:
        //primeira interação só com a chave
        texto = [
            "*Coloca a chave no cadeado* Finalmente vou sair desse quarto",
            "Ué... a chave girou, mas... a porta não abre",
            "*Puxa a maçaneta com força* Tá emperrada... que azar da desgraça",
            "Pelo menos soltei essa porcaria de cadeado",
            "*Gira e vê o verso do cadeado* tem algo escrito aqui!!",
            "'Procure onde a luz não chega mas o vento passa'",
            "Que porcaria de enigma é esse?"
            ]
        posicao_max = 6
    break
    case 4:
        //interação só com a chave
        texto = [
            "'Procure onde a luz não chega mas o vento passa'",
            "Eu queria saber o que isso significa..."
            ]
        posicao_max = 1
    break
    case 5:
        //arrombando a porta
        texto = [
            "É agora que eu arrombo essa porqueira de porta",
            "*Encaixa o cadeado na fresta da porta e força*",
            "Abre logo desgrAÇAAAAAAAAAAAAAAAAAAAAAA!!!",
            "*Porta afrouxa e desemperra* FINALMENTE",
            "Que portinha mais teimosa bixo"
            ]
        posicao_max = 4
    break
    case 6:
        //abriu a porta
        texto = [
            "Agora eu finalmente vou poder sair desse quarto véi podi",
            "Quero ir falar com alguém, descobrir se me conhecem",
            "Só espero que não seja nenhum esquisitão..."
            ]
        posicao_max = 2
    break
    
    //Interações com a Ventilação
    case 7:
        //vendo pela primeira vez
        texto = [
            "Tem essa ventilção aqui, parece ter alguma coisa dentro",
            "Talvez eu possa abrir ela usando algo reto, pra girar o parafuso",
            "Mas o que eu tenho que posso usar pra desparafusar?"
            ]
        posicao_max = 2
    break
    case 8:
        //começando a desparafusar
        texto = [
            "Acho que eu posso usar a parte de trás da chave pra desparafusar",
            "Só tenho que tomar cuidado para não quebrar a chave"
            ]
        posicao_max = 1
    break
    case 9:
        //tirou todos os parafusos
        texto = [
            "Consegui tirar todos os parafusos, que bagulho dificil da pega"
            ]
        posicao_max = 0
    break
    case 10:
        //quebrou a chave *opcional*
        texto = [
            "Eu só não acredito que consegui quebrar a chave",
            "Eu deveria ter tomado mais cuidado, espero que não faça falta"
        ]
        posicao_max = 1
    break
    case 11:
        //pegou o pé de cabra
        texto = [
            "Um pé de cabra? que inesperado, mas útil",
            "Acho que posso usar ele para desemperrar a porta",
            "Só vou precisar de um cadin de força bruta"
        ]
        posicao_max = 2
    break
    
    //Interações com a caixa da chave
    case 12:
        //primeira interação com a caixa
        texto = [
            "Tem essa caixa aqui, será que tem algo bom dentro dela?",
            "*Tenta abrir a caixa*",
            "Essa desgrama deve estar trancada",
            "Parece ter uns papéis embaixo dela, talvez eles me ajudem"
            ]
        posicao_max = 3
    break
    case 13:
        //começando o puzzle
        texto = [
            "Um sudoku... o que eu vou fazer com isso aqui, e tem esse outro papel com uns números estranhos",
            "Eu tenho que achar sete números para a senha e só tem esse sudoku",
            "O que me resta é sentar e tentar entender isso aqui, algo aqui deve me dar a senha"
            ]
        posicao_max = 2
    break
    case 14:
        //completou o puzzle
        texto = [
            "Finalmente consegui a senha, pra que fazer um sudoku e me fazer procurar os números nele",
            "Negócio desnecessário, só quero sair daqui logo"
            ]
        posicao_max = 1
    break
    case 15:
        //pegou a chave
        texto = [
            "Ah, uma chave, que maravilha, onde é que eu posso usar isso aqui"
            ]
        posicao_max = 0
    break
    
    //Interações na cozinha 
    case 16:
        //viu as fotos em cima da mesa
        texto = [
            "Essa foto na mesa... É uma foto minha?!?",
            "Será que fui que deixei isso aqui? Essa casa aqui é minha?",
            "Eu tenho tantas perguntas mas não tem ninguém para responder",
            "Tem essas provas aqui, e essas folhas que parecem detalhar uma rotina",
            "Que coisa de maluco essas coisas, acho que vou seguir essa trilha de sangue no chão"
            ]
        posicao_max = 4
        imagem = spr_fotoProtaFala
    break
    case 17:
        //pegou a faca
        texto = [
            "Essa faca pode ser útil para me defender, não sei que tipo de louco vou encontrar aqui"
            ]
        posicao_max = 0
    break
    case 18:
        //pegou o desentupidor
        texto = [
            "Eu posso usar isso para desentupir algo, ou talvez bater em alguém..."
            ]
        posicao_max = 0
    break
    case 19:
        //Viu o corpo na banheira
        texto = [
            "TEM UM CADÁVER AQUI, O QUE ACONTECEU NESSE LUGAR",
            "Meus deus, eu tenho que fugir daqui o mais rápido possível",
            "O próximo pode acabar sendo eu"
            ]
        posicao_max = 2
    break
    case 20:
        //viu a foto na geladeira
        texto = [
            "Será quem é esse homão grande, loiro e de um 1,90m é o dono daqui?",
            "Espero encontrar ele em algum momento pra perguntar algumas coisas"
            ]
        posicao_max = 1
    break
    
    //Puzzle da pia
    case 21:
        //Olhando a pia sem o desentupidor
        texto = [
            "Essa pia entupida está nojenta, era bom alguém desentupir isso aqui"
            ]
        posicao_max = 0
    break
    case 22:
        //Olhando a pia com o desentupidor
        texto = [
            "Essa pia entupida está nojenta, era bom alguém desentupir isso aqui",
            "Talvez eu possa usar meu desentupidor nela"
            ]
        posicao_max = 1
    break
    case 23:
        //Completou a pia
        texto = [
            "Consegui desentupir essa pia finalmente, vejamos o que entupiu ela...",
            "Uma chave?!? Quem entupiu a pia com uma chave meu deus",
            "E ela ainda ta toda gosmenta e verde, ao menos tem uma parte limpa pra segurar ela"
            ]
        posicao_max = 2
    break
    
    //Puzzle da porta
    case 24:
        //Olhando a porta da cozinha sem chave
        texto = [
            "Outra porta trancada e mais uma caça por uma chave",
            "E o pior, tem um cadeado reforçado a mais"
            ]
        posicao_max = 1
    break
    case 25:
        //Olhando a porta da cozinha com chave
        texto = [
            "Talvez eu possa tentar usar essa chave nojenta que peguei para abrir a porta",
            "Oh nojeira que ta, vou arremessar essa chave longe se não funcionar",
            "Funcionou, agora preciso de um jeito de destrancar a outra tranca"
            ]
        posicao_max = 2
    break
    case 26:
        //Olhando a porta destrancada
        texto = [
            "Vamos lá... Abriu grazadeus, vamo partir pro próximo comôdo"
            ]
        posicao_max = 0
    break
    case 27:
        //Pegando o grampo
        texto = [
            "Será que tem algo de bom nesse cesto aqui?",
            "Ah, um grampo, talvez eu possa usar ele para destrancar algo"
            ]
        posicao_max = 1
    break
    case 28:
        //Olhando a porta da cozinha sem grampo
        texto = [
            "Eu preciso achar uma forma de abrir essa outra tranca"
            ]
        posicao_max = 0
    break
    case 29:
        //Olhando a porta da cozinha sem grampo
        texto = [
            "Eu posso usar esse grampo que eu peguei para arrombar essa outra tranca"
            ]
        posicao_max = 0
    break
    case 30:
        //Completou o puzzle do grampo quebrando
        texto = [
            "Consegui finalmente destrancar essa porta"
            ]
        posicao_max = 0
    break
    case 31:
        //Completou o puzzle do grampo quebrando
        texto = [
            "Consegui finalmente destrancar essa porta mas acabei quebrando meu grampo"
            ]
        posicao_max = 0
    break
    
    //Interações na sala
    case 32:
        //Chegou na sala e ta vendo a TV
        texto = [
            "Essa TV aqui parece funcionar, vou dar uma olhada em algo pra passar o tempo",
            "Vamos ver o que tem aqui... *Liga a TV em um jornal qualquer*",
            "Jornalista - Hoje aconteceu o desaparecimento de Jorginho, caso você  veja o garoto dessa foto ligue para a polícia imediamente",
            "Mas esse ai sou eu... Como assim eu fui sequestrado?",
            "Eu não consigo me lembrar de nada, o que eu vou fazer se o sequestrador aparecer",
            "Preciso fugir o mais rápido possível antes que ele possa me achar, pelo menos descobri que meu nome é Jorginho..."
            ]
        posicao_max = 5
        imagem = spr_telaTV
    break
    case 33:
        //Pegou a caixa de ferramentas
        texto = [
            "Essa caixa de ferramentas pode ser útil, esse fusível, martelo, chave de fenda e corta vergalhão podem servir de algo"
            ]
        posicao_max = 0
    break
    case 34:
        //Olhando o elevador sem energia
        texto = [
            "O elevador parece estar sem energia"
            ]
        posicao_max = 0
    break
    case 35:
        //Olhando o elevador com energia
        texto = [
            "Vou chamar esse elevador é agora, finalmente vou poder sair desse lugar",
            "Que bom que não dei de cara com nenhum louco",
            ]
        posicao_max = 1
    break
    case 36:
        //Abrindo a caixa de fusiveis
        texto = [
            "bruh4"
            ]
        posicao_max = 0
    break
    case 37:
        //Primeira interação com a caixa aberta
        texto = [
            "bruh5"
            ]
        posicao_max = 0
    break
    case 38:
        //Completou o puzzle
        texto = [
            "bruh5"
            ]
        posicao_max = 0
    break
}
posicao = 0
indice = 0

fim_fala = false

global.player_dialogo = true