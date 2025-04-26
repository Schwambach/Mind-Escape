if place_meeting(x, y, obj_player) and image_index == 0{
	if (keyboard_check_pressed(ord("E"))){
		image_speed = 1
	}
}
if(image_index > 12){
	image_speed = 0
}