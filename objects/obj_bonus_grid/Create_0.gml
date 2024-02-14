// Criação da ds_grid
bonus_escolhidos = ds_grid_create(2, 6)

//Icones dos bonus
ds_grid_set(bonus_escolhidos, 0, 0, 0); //tempo
ds_grid_set(bonus_escolhidos, 0, 1, 1); //lixeiro
ds_grid_set(bonus_escolhidos, 0, 2, 2); //plastico
ds_grid_set(bonus_escolhidos, 0, 3, 3); //metal
ds_grid_set(bonus_escolhidos, 0, 4, 4); //vidro
ds_grid_set(bonus_escolhidos, 0, 5, 5); //papel

//Quantidade existente
ds_grid_set(bonus_escolhidos, 1, 0, 0); //tempo
ds_grid_set(bonus_escolhidos, 1, 1, 0); //lixeiro
ds_grid_set(bonus_escolhidos, 1, 2, 0); //plastico
ds_grid_set(bonus_escolhidos, 1, 3, 0); //metal
ds_grid_set(bonus_escolhidos, 1, 4, 0); //vidro
ds_grid_set(bonus_escolhidos, 1, 5, 0); //papel