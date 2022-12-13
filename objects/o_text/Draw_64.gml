

display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
draw_self();
draw_set_font(f_text);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_color(c_black);


var _print = string_copy(message,1,textProgress);


if (responses[0] != -1) && (textProgress >= string_length(message))
{
	for (var i = 0; i < array_length(responses); i ++)
	{
			_print += "\n";
			if (i == responseSelected) _print += "> ";
			_print += responses[i];
			if (i == responseSelected) _print += "< ";

	}

}

draw_set_alpha(1);
draw_text((camera_get_view_width(view_camera[0]))/2, ((camera_get_view_height(view_camera[0]))/4)*3.2, _print);
