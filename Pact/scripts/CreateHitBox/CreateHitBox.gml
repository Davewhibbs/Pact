/// CreateHitBox(x, y, lifetime, damage)
/// @param x
/// @param y
/// @param lifetime
/// @param damage

var xLoc = argument0;
var yLoc = argument1;
var lifetime = argument2;
var damage = argument3;

// Create a hitbox at x and y, set the lifetime and damage of the hitbox
var hitbox = instance_create_layer(argument0, argument1, "Instances", o_hitbox);
hitbox.lifetime = lifetime;
hitbox.damage = damage;