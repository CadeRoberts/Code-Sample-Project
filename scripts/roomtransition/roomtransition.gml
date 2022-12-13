
function roomtransition(){

	if (!instance_exists(o_transition))
	{
		with(instance_create_depth(0,0, -9999, o_transition))
			{
					
				type = argument[0];
				targetRoom = argument[1];
				
				
				
			}
	
	
	} else show_debug_message("trying to transition while transition is happening")


}