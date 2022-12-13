textProgress += global.textSpeed

//cycle thru responses
keyUp = keyboard_check_pressed(vk_up)|| keyboard_check (ord("W"));
keyDown = keyboard_check_pressed(vk_down)||keyboard_check (ord("S"));
responseSelected += (keyDown - keyUp);
var _max = array_length(responses) -1;
var _min = 0;
if (responseSelected >_max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;



if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(message);	
	if (textProgress >= _messageLength)
	{
		
		if(responses [0] != -1)
		{
			with (originInstance)
			{
					dialogue_responses(other.responseScripts[other.responseSelected]);
				
				
			}
			
		}
		instance_destroy();	
		if (instance_exists(o_textQueued))
		{
			with(o_textQueued) ticket --;	
		}
		else
		{
				with (o_boyo) state = lastState;
			
		}
		
		
	}
	else
	{
			if (textProgress >2)
			{
				textProgress = _messageLength;	
			}
	}
}
