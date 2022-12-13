if(!instance_exists(o_DSLR))
	{
		laserCollision = false;	
	}

if (laserCollision == true) && (o_DSLR.cameraState == lasermode)
{

	// get angle from self to DSLR
	originAngle = point_direction(x,y,o_reflectionMarkerLine.x, o_reflectionMarkerLine.y);
	lineDir = (360 - originAngle);
	lineEndX = lengthdir_x(lineLength, lineDir)+x;
	lineEndY = lengthdir_y(lineLength, lineDir)+y;
	
	
	
} else draw_set_alpha(0);