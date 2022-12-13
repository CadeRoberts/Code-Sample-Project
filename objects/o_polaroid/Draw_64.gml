



	display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
	
	// for blackout
drawpolaroid();
draw_set_color(c_white);
draw_set_alpha(percent);
draw_set_font(f_text2);
draw_text(5, ((camera_get_view_height(view_camera[0]))/2)- 50, text);

if (percent >= 1)
{
	draw_set_alpha(percent2);		// developing
	draw_sprite_stretched(spr_polaroidBackgrounds, backgroundImage, 140, 25,130,110 ); // draw background
	draw_sprite_stretched(animalCaught, imageIndex, 170, 35,64,64 ); // draw animal 


	if (percent2 >= 0.30)
	{
		
		
		draw_set_color(c_white);
		draw_set_alpha(percent);
		draw_set_font(f_text2);
		draw_text(300, ((camera_get_view_height(view_camera[0]))/2)- 70, creatureName);
		draw_text(300, ((camera_get_view_height(view_camera[0]))/2)- 50, weightString);
		draw_text(300, ((camera_get_view_height(view_camera[0]))/2)- 30, heightString);
		
	}


	if (timer >=100)		// dont delete too fast
	{
		if (o_boyo.keyActivate)
		{
			instance_destroy();	
			with(o_boyo) state = PlayerStateFree;
			audio_resume_all();
		}
	}
}




timer +=1;
