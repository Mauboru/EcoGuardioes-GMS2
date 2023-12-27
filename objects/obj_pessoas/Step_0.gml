var _mare_encheu = obj_controller.encheu

x += lengthdir_x(speed, direction); // Movimentação horizontal
y += lengthdir_y(speed, direction); // Movimentação vertical

// Verificar se o objeto atingiu a borda direita ou esquerda
if (x + sprite_width <= 0 || x + sprite_width >= room_width) {
    // Inverter a direção quando atinge a borda
	limite--;
    direction = 180 - direction;
	image_xscale *= -1;
}

if (limite <= 0) instance_destroy();

//Se a maré encheu
if (_mare_encheu) instance_destroy();

time += 1; // Atualiza a variável de tempo

// Calcula a posição vertical usando uma função senoidal
y += amplitude * sin(frequency * time);

// Restringe a amplitude para evitar movimentos extremos
y = clamp(y, initial_y - amplitude, initial_y + amplitude);