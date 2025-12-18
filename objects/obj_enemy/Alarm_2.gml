if (global.dialogBol == false && done == 0) {
    done += 1;
    pattern = 2;
    alarm[0] = 60;
} else if (alarm[3] == -1) { 
    // O -1 significa que o alarme não está ativo no momento
    alarm[3] = 240;
}