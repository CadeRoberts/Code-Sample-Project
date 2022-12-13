 // random pecking behavior
if (peckLength <=0)						// we arent pecking
	{
		if (audio_is_playing(snd_woodPecker)) audio_stop_sound(snd_woodPecker);
		if irandom(betweenPeckLength)== 69				// 1/1000 chance to start (good long breaks)
		{
		
		peckLength = irandom_range(10,18);				//peck for 10-19 frames	
	
		
		}
	
	}
peckLength --;
clamp(peckLength, 0, 500);
if peckLength >= 0 
	{
		image_speed = 0.7;
		audio_sound_gain(snd_woodPecker, 0.6,0);
		if !audio_is_playing(snd_woodPecker) 
		{
			randomPitch = random_range(0.9, 1.2);
			audio_sound_pitch(snd_woodPecker, randomPitch);
			audio_play_sound(snd_woodPecker, 3, 0)
		}
	} 
	else 
	{ 
		image_index = 0;
		image_speed = 0;
	}
	
	// picture taking functions
	creaturetrianglecheck();
	creaturecaught();