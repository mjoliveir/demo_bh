if (counter % 5 == 0) {
    var qtd = 30; // número de balas no círculo
    for (var i = 0; i < qtd; i++) {
        var angle = i * (360 / qtd);
        
        var b = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
        b.direction = angle;
        b.speed = 3;
    }
	counter++;
}

