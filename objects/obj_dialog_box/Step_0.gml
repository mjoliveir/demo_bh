if (keyboard_check_pressed(vk_space)) {
    dialog_index++;
	
	if(dialog_index == 1){
		with(char){
		sprite_index = spr_char2_happyv2
		x += 100
		}
	}
		if(dialog_index == 2){
		with(char){
		sprite_index = spr_char2_d1
		}
	}
	

    if (dialog_index >= array_length(dialog)) {
        instance_destroy(obj_char2_happy)
		instance_destroy()
		
    }
	
} 