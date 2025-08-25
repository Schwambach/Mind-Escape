cooldown--

if(cooldown <= 72 and ativado = true){
	image_xscale = tamanhoOriginalX
	image_yscale = tamanhoOriginalY
}

if (cooldown <= 0 and ativado = true){
		room = lugar
        Salvar()
}