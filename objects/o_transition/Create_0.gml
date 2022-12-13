// enums + setup
cam = view_camera[0];
enum TRANS_TYPE
	{
		SLIDE,
		FADE, 
		PUSH, 
		STAR,
		WIPE

	}
	
	width = camera_get_view_width(cam);
	height = camera_get_view_height(cam);
	height_half = height*(0.5);
	percent = 0;
	leading = OUT;
	