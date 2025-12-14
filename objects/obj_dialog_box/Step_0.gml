if (keyboard_check_pressed(vk_space)) {
    dialog_index++;
	
	if(dialog_index > 0){
		with(char){
		sprite_index = spr_char2_happyv2
		x += 100
		}
	}

    if (dialog_index >= array_length(dialog)) {
        dialog_index = array_length(dialog) - 1; // trava no último
    }
} 