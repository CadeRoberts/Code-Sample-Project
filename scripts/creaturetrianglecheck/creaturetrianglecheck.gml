// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function creaturetrianglecheck(){
	
	if caughtNow == true caughtNow = false;
	
if ((instance_exists(o_boyo)) and (instance_exists(o_DSLR)))
{
	
	currentView = rectangle_in_triangle(
		bbox_left, 
		bbox_top, 
		bbox_right, 
		bbox_bottom,
		o_DSLR.x,
		o_DSLR.y,
		o_DSLR.leftCornerX,
		o_DSLR.leftCornerY,
		o_DSLR.rightCornerX,
		o_DSLR.rightCornerY)
		
		if currentView >=1
		{
			image_blend = c_black;
			
			
		} else image_blend = -1;
	
	
	if o_DSLR.snap == true
	{
		
		 pic = rectangle_in_triangle(
		bbox_left, 
		bbox_top, 
		bbox_right, 
		bbox_bottom,
		o_DSLR.x,
		o_DSLR.y,
		o_DSLR.leftCornerX,
		o_DSLR.leftCornerY,
		o_DSLR.rightCornerX,
		o_DSLR.rightCornerY)
		 
	
		if (pic >=1)
		{
			caught = true;
			caughtNow = true;
		}

	}
}
}