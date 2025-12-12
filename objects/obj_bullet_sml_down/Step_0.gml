direction += turn_speed;

x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// destruir fora da tela
if (x < -50 || x > room_width+50 || y < -50 || y > room_height+50)
    instance_destroy();
