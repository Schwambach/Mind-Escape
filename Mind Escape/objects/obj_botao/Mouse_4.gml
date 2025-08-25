image_xscale = tamanhoOriginalX * 0.9
image_yscale = tamanhoOriginalY * 0.9
audio_play_sound(aud_mouse_click,0,false,global.volume)
if(tipo != 4 and tipo != 5 and tipo != 6 and tipo != 9){
	instance_create_layer(0,0,"Instances_transicao",obj_transicaoIndo)
}