/// @description Insert description here
// You can write your code in this editor
draw_self();

if !instance_exists(player) exit;

// Determine how much to fill
draw_hp = lerp (draw_hp, player.hp, .2);

// Draw the filling
draw_set_color(c_red);
draw_rectangle(x + 1, y + 1, x + 38 * draw_hp/player.max_hp, y + 6, false);
draw_set_color(c_white);