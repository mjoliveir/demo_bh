// Cria o personagem e guarda o ID dele
var _char_inst = instance_create_layer(x - 200, y, "Instances_1", obj_char2_happy);

// Cria a caixa de diálogo
var _inst = instance_create_layer(x, room_height - 100, "Instances", obj_dialog_box);

// PASSA OS DIÁLOGOS DIRETAMENTE
_inst.char = _char_inst; // Passa o ID do personagem que acabou de criar
_inst.names = ["Holivia"];
_inst.dialog = [
    "Olá! Este é o diálogo personalizado.",
    "Eu passei essas frases por fora do objeto!",
    "Isso é muito mais prático."
];