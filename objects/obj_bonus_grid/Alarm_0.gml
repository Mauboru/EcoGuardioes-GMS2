//Reseta as consequencias dos bonus
global.is_bonus = false;
global.timer_vel = .02;

if (instance_exists(obj_pessoas)) obj_pessoas.speed = random_range(.8, 1.2);