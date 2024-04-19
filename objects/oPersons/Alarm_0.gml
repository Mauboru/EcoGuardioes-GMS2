if in_pause exit;

var _obj_lixo = instance_create_layer(x, y, "Instances", oResidues);
var _speed = irandom_range(5, 10);
var _angle = irandom_range(45, 135);
var _hspeed_initial = _speed * cos(_angle);
var _vspeed_initial = -_speed * sin(_angle);

_obj_lixo.x = x;
_obj_lixo.y = y;
_angle = degtorad(_angle);
_obj_lixo.hspeed = _hspeed_initial;
_obj_lixo.vspeed = _vspeed_initial;
_obj_lixo.image_angle = irandom(360); 