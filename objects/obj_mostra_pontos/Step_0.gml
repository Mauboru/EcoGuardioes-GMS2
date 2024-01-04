// Movimente para cima
y += speed_y;

// Reduza a duração
duration--;

// Desapareça após a duração especificada
if (duration <= 0) {
    instance_destroy();
}