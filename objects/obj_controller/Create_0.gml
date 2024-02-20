//Discord
/*
discord_init_dll();
global.discord_init_app("1190119242058698753");
*/

//Variaveis
global.timer = 120;
global.timer_vel = .02;
global.encheu = false;
global.fase = 1;
global.pontos = 0;
global.pontos_str = "000000";
global.erros = 0;
global.tipos_existentes = [];
global.is_bonus = false;

#region Bonus

// Criação da ds_grid
bonus_escolhidos = ds_grid_create(2, 6);

//Icones dos bonus
ds_grid_set(bonus_escolhidos, 0, 0, 0); //tempo
ds_grid_set(bonus_escolhidos, 0, 1, 1); //lixeiro
ds_grid_set(bonus_escolhidos, 0, 2, 2); //plastico
ds_grid_set(bonus_escolhidos, 0, 3, 3); //metal
ds_grid_set(bonus_escolhidos, 0, 4, 4); //vidro
ds_grid_set(bonus_escolhidos, 0, 5, 5); //papel

//Quantidade existente
ds_grid_set(bonus_escolhidos, 1, 0, 3); //tempo
ds_grid_set(bonus_escolhidos, 1, 1, 3); //lixeiro
ds_grid_set(bonus_escolhidos, 1, 2, 3); //plastico
ds_grid_set(bonus_escolhidos, 1, 3, 3); //metal
ds_grid_set(bonus_escolhidos, 1, 4, 3); //vidro
ds_grid_set(bonus_escolhidos, 1, 5, 3); //papel

#endregion