
if active = true
{
display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
draw_set_color(c_blue);
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0,0, camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]), false);
draw_sprite_stretched(spr_polaroid, 1, 110, 10, 160, 160);




if firstCreature = false
{
	
	
	if(keyboard_check_pressed(vk_right))
		{
			picSelected +=1	

		}
	if(keyboard_check_pressed(vk_left))
		{
			picSelected -=1	

		}
	
	if picSelected <= 0 picSelected = 0;
	if picSelected >= (ds_grid_height(picsTaken)) picSelected = 0;
	
	
	var _height = ds_grid_height(picsTaken)
	for (var i = 0; i < (_height+1); i++)
	{
		if i == picSelected
		{
			whichCreature = picsTaken[# 0, i]
			switch (whichCreature)

				{
						case o_crab:
						creatureName = "Crab"
						break;
	
						case o_sandPiper:
						creatureName = "SandPiper"
						break;
	
						default:
						creatureName = "Wow"
						break;
	
				}

		draw_sprite_stretched(spr_polaroidBackgrounds, picsTaken[# 3, i], 125, 25,130,110 );
		draw_sprite_stretched(spr_selectionArrow, 0, 295, ((camera_get_view_height(view_camera[0]))/2), 1, 1  )
		draw_sprite_stretched(picsTaken[# 1, i], picsTaken[# 2, i], 150, 30,64,64 );
		draw_set_color(c_white);
		draw_set_alpha(percent);
		draw_set_font(f_text2);
		draw_text(5, ((camera_get_view_height(view_camera[0]))/2)- 50, text)
		draw_text(300, ((camera_get_view_height(view_camera[0]))/2)- 70, creatureName);
		draw_text(300, ((camera_get_view_height(view_camera[0]))/2)- 50, "Height:" + picsTaken[# 4, i] + " lbs");
		draw_text(300, ((camera_get_view_height(view_camera[0]))/2)- 30, " Weight:" + picsTaken[# 5, i]+ "lbs");
		}
	}


}
		
		



}


