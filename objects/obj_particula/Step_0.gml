speed -= .2;
image_alpha -= .02;

if (image_alpha <= 0){
	instance_destroy();
}

if (speed <= 0){
	speed = 0;
}