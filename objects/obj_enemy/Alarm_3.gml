// Verifica se a variável "ja_executou" NÃO existe neste objeto
if (!variable_instance_exists(id, "ja_executou")) {
	
    // Cria a variável agora mesmo e define como true
    ja_executou = true;

    // Seu código original
    instance_create_layer(x, y, "Instances", obj_dialog_box);
    instance_create_layer(x, y, "Instances", obj_char2_happy);
}