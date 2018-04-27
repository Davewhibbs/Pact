/// @description Insert description here
// You can write your code in this editor

// if the player isn't dead, hit the player
if other.state != states.death{
// create a hitbox
CreateHitBox(x, y, 1, damage, xForce * dir, yForce, ID);


// destroy self 
instance_destroy();
}