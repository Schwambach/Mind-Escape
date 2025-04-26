moveh = -keyboard_check(ord("A")) +keyboard_check(ord("D"))
movev = -keyboard_check(ord("W")) +keyboard_check(ord("S"))
hsp = moveh * velocidade
vsp = movev * velocidade
if place_meeting(x+hsp,y,obj_colisao){
	while !place_meeting(x+sign(hsp),y,obj_colisao){
		x+=sign(hsp)
	}
	hsp = 0;
}	
if place_meeting(x,y+vsp,obj_colisao){
	while !place_meeting(x,y+sign(vsp),obj_colisao){
		y+=sign(vsp)
	}
	vsp = 0;
}	
x+=hsp
y+=vsp

if(hsp!=0){
	image_xscale=sign(hsp)
}

if(moveh!=0 or movev!=0){
	sprite_index=Andar
}else{
	sprite_index=Player
}

//Piscar
muda_piscar+=0.3
if(muda_piscar>50){
	muda_piscar = 0
}

depth = -y;