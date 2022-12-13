
if (cameraState ==pictureMode)
{
	// draw triangle based on zoommarkers 1 and 2
	if firstFrame >=2 // dumb debug thing where it was drawing upward triangle on every frame. 2 frame timer
	{
	draw_set_alpha(0.2);
	draw_set_color(c_yellow)
	draw_triangle(x,y,leftCornerX, leftCornerY, rightCornerX, rightCornerY,false)
	draw_set_alpha(1);
	}
}
	
if (cameraState == lasermode)
	{
		draw_set_alpha(0.7);
		draw_set_color(c_red);
		draw_line_width(lineBeginX,lineBeginY,lineEndX, lineEndY, 1);
		draw_set_alpha(1);

	}




