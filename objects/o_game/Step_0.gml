/// @description Insert description here
// You can write your code in this editor
if( keyboard_check_pressed(vk_alt)) 
{
	collisionVis = !collisionVis
}
if (collisionVis)
{
layer_set_visible ("Col", false)
} else layer_set_visible("Col", true);