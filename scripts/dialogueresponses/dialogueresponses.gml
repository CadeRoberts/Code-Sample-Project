// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialogue_responses(){

	switch(argument0)
	{
		case 0: break;
	
		case 1: newtextbox("please give it to me", ["3:yes", "2: no"] ); break;
		case 2: newtextbox( "..........ouch................"); break;
		case 3: {
			newtextbox("thanks! Here, have these shoes!"); ;
			newtextbox("recieved the RUNNING SHOES. press SHIFT to run")
				with(o_boyo)
					{
						speedRun = speedRun*1.5;
					}
			
				}break
		case 4: break;
		default: break; 
	


	}

}