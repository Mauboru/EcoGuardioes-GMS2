depth = -y;

if (mudei) {
    alpha -= 0.02;
} else {
    alpha += 0.02;
}

// Limitando o valor de alpha entre 0 e 1
alpha = clamp(alpha, 0, 1);

// Me destruindo depois de transparente e mudado o background
if (mudei && alpha <= 0) {
	instance_destroy();
}