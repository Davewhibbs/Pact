/// CreateHitBox(x, y, lifetime, damage, id)
/// @param x
/// @param y
/// @param lifetime
/// @param damage
/// @param x_Force
/// @param y_Force
/// @param id

var xLoc		= argument0;
var yLoc		= argument1;
var lifetime	= argument2;
var damage		= argument3;
var x_Force		= argument4;
var y_Force		= argument5;
var ID			= argument6;

// Create a hitbox at x and y, set the lifetime and damage of the hitbox
var hitbox		= instance_create_layer(xLoc, yLoc, "Instances", o_hitbox);
hitbox.lifetime = lifetime;
hitbox.damage	= damage;
hitbox.x_Force	= x_Force;
hitbox.y_Force	= y_Force;
hitbox.ID		= ID;