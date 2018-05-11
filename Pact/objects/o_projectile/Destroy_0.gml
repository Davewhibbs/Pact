/// @description Insert description here
// You can write your code in this editor
// create projectile death object with this objects dir
var particle = instance_create_layer(x, y, "Particles", o_projectile_destroy);
particle.dir = dir;