if ativo {
    if keyboard_check_pressed(vk_space) {
        frase_atual += 1;
        if frase_atual >= array_length(frases) {
            ativo = false;
            instance_destroy(); // fecha o diálogo
        }
    }
}