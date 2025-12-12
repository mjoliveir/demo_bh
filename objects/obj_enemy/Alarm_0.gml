/// ALARM[0]

switch (pattern) {

    // --------------------------------------------------------------
    // 1 — Marisa Infinite Spiral (espiral infinita)
    // --------------------------------------------------------------
    case 1:
        spiral_angle += 5;

        var b = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
        b.direction = spiral_angle;

        alarm[0] = 1; // repete
    break;



    // --------------------------------------------------------------
    // 2 — Reimu Ring Shot (anel completo)
    // --------------------------------------------------------------
    case 2:
        var bullets = 30;

        for (var i = 0; i < bullets; i++) {
            var dir = (360 / bullets) * i;
            var bb = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
            bb.direction = dir;
        }

        alarm[0] = room_speed / 2; // a cada 0.5s
    break;



    // --------------------------------------------------------------
    // 3 — Remilia Red Magic (espiral dupla giratória)
    // --------------------------------------------------------------
    case 3:
        angle1 += 4;
        angle2 += 4;

        var b1 = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
        b1.direction = angle1;

        var b2 = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
        b2.direction = angle2;

        alarm[0] = 1;
    break;



    // --------------------------------------------------------------
    // 4 — Youmu Flower Petals (pétalas sinusoidais)
    // --------------------------------------------------------------
    case 4:
        // tempo individual (por inimigo)
        if (!variable_global_exists("time_y")) time_y = 0;
        time_y += 0.15;

        var dir = 270 + sin(time_y) * 60;

        var p = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
        p.direction = dir;

        alarm[0] = 1;
    break;



    // --------------------------------------------------------------
    // 5 — Patchouli Element Wall (parede de balas)
    // --------------------------------------------------------------
    case 5:
        var lines = 6;
        var per_line = 16;

        for (var j = 0; j < lines; j++) {
            for (var i = 0; i < per_line; i++) {
                var dx = -100 + i * 20;
                var bb = instance_create_layer(x + dx, y + j * 8, "Instances", obj_bullet_sml_down);
                bb.direction = 270;
            }
        }

        alarm[0] = room_speed; // cada 1 segundo
    break;



    // --------------------------------------------------------------
    // 6 — Sakuya Knife Spray (spray rápido em cone)
    // --------------------------------------------------------------
    case 6:
        var spread = 50;
        var num = 8;

        for (var k = 0; k < num; k++) {
            var dir2 = 270 - spread/2 + (spread/(num-1))*k;
            var kn = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
            kn.direction = dir2;
            kn.speed = 8;
        }

        alarm[0] = 5;
    break;



    // --------------------------------------------------------------
    // 7 — Flandre Starbow Break (caos controlado)
    // --------------------------------------------------------------
    case 7:
        for (var s = 0; s < 12; s++) {
            var bb = instance_create_layer(x, y, "Instances", obj_bullet_sml_down);
            bb.direction = irandom(360);
            bb.speed = 3 + random(3);
            bb.turn_speed = random_range(-0.4, 0.4); // curva para virar caos
        }

        alarm[0] = 4;
    break;

}
