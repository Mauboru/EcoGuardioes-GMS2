randomize();

clicado = false;
x_anterior = x;
y_anterior = y;
papel = 0;
vidro = 1;
plastico = 2;
metal = 3;
tipo = choose(0,2);

switch (tipo) {
    case papel:
        tipo = "papel"
		sprite = irandom_range(4, 7)
		image_index = sprite;
        break;
    case vidro:
        tipo = "vidro"
		sprite = irandom_range(8, 10)
		image_index = sprite;
        break;
    case plastico:
        tipo = "plastico"
		sprite = irandom_range(0, 3)
		image_index = sprite;
        break;
    case metal:
        tipo = "metal"
		sprite = irandom_range(11, 14)
		image_index = sprite;
        break;
}
	
#region Fisica

phy_residuos = physics_fixture_create();
physics_fixture_set_box_shape(phy_residuos, sprite_width/2, sprite_height/2);
physics_fixture_set_density(phy_residuos, 0.5);
physics_fixture_set_restitution(phy_residuos, 0.1);
physics_fixture_set_collision_group(phy_residuos, 1);
physics_fixture_set_linear_damping(phy_residuos, 0.1);
physics_fixture_set_angular_damping(phy_residuos, 0.1);
physics_fixture_set_friction(phy_residuos, 0.2);
physics_fixture_bind(phy_residuos, self);

#endregion