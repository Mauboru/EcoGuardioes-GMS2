audio_stop_all();

instance_destroy(oResidues);
if !instance_exists(oController) instance_create_layer(0, 0, "Instances", oController)