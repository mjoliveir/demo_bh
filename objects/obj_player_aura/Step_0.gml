if object_exists(obj_player){
x = obj_player.x
y = obj_player.y
}else {
	exit
}
aura = global.aura

if keyboard_check_pressed(vk_space){
alarm[0] = 1
}