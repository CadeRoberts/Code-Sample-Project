/// @description Insert description here
// You can write your code in this editor
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

if (instance_exists(shadow))
{
instance_destroy(shadow)

	shadow = instance_create_layer(x,y,layer, o_shadow);
	
} else shadow = instance_create_layer(x,y,layer, o_shadow);

if(global.targetX != -1)
{
		x = global.targetX;
		y = global.targetY;
		direction = global.targetDirection;
}
layer_add_instance("Instances", id);