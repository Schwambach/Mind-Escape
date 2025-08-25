x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])
if !global.transicao_ativa and !ativo{
	instance_destroy(self)
}

if(image_index == 0){
    global.transicao_ativa = false
	instance_destroy(self)
}