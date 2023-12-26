var _obj_lixo = instance_create_layer(x, y, "Instances", obj_lixo);
var _speed = irandom_range(5, 10);
var _angle = irandom_range(45, 135);

_obj_lixo.x = x;
_obj_lixo.y = y;
_angle = degtorad(_angle);

var _hspeed_initial = _speed * cos(_angle);
var _vspeed_initial = -_speed * sin(_angle);

_obj_lixo.hspeed = _hspeed_initial;
_obj_lixo.vspeed = _vspeed_initial;

_obj_lixo.image_angle = irandom(360); 

alarm[0] = irandom_range(60, 300);