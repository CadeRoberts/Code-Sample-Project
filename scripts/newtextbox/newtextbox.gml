// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function newtextbox(){

var _obj;
if (instance_exists(o_text)) _obj = o_textQueued; else _obj = o_text;
with (instance_create_layer(0,0, "Instances", _obj))
{
	if (instance_exists(other)) originInstance = other.id else originInstance = noone;	
	message = argument[0];
	
	
		if (argument_count > 1)
		{
			
			// trim markers
			var _array=argument[1];

				for(var _i=0;_i<array_length(_array)  ;_i++)
				{
				 responses[_i]=_array[_i];
				}
			for (var i = 0; i < array_length(responses); i++)
			{
					var _markerPosition = string_pos(":", responses[i]);  // which response within array, which position within string
					responseScripts[i] = string_copy(responses[i], 1, _markerPosition - 1);
					responseScripts[i] = real(responseScripts[i]);
					responses[i] = string_delete(responses[i],1,_markerPosition);
			}

		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
			
		}
	
}	
	
	
	
	
	
with(o_boyo)
{
	if (state != playerstatelocked)
	{
		lastState = state;
		state = playerstatelocked
		
		
	}
	
	
	
}



}