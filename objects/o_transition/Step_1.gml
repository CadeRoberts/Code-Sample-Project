// progress transition
with(o_boyo) state = PlayerStateTransition;

if ( leading == OUT)
	{
			
		percent = min(1, percent + TRANSITION_SPEED);
		if (percent >= 1) // if screen fully obscured
		{
			room_goto(targetRoom);	
			leading = IN;	
		}
		
	}
	else // leading == IN
	{
		percent = max(0, percent - TRANSITION_SPEED);
		if (percent<=0) // if screen fully revealed
		{
			with(o_boyo) state = PlayerStateFree;
			instance_destroy();		
		}
	}