
// layer management

collisionVis = true;

if !(instance_exists(o_camera))
	{
	global.iCamera = instance_create_layer(o_boyo.x,o_boyo.y, layer, o_camera);
	}

if !(instance_exists(o_music))
{
	global.iMusic = instance_create_layer(o_boyo.x, o_boyo.y, layer, o_music);
}

global.camWidth = camera_get_view_width(view_camera[0]);
global.camHeight = camera_get_view_height(view_camera[0]);

