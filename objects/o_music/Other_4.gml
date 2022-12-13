//music section

	
	



// AMBIENT NOISE SECTION




//if a sound was already playing, stop it

if (audio_is_playing(ambientNoise))
	{
	audio_stop_sound(ambientNoise);
	}

// what room am i in? play whatever noise
switch (room)
{
	case r_home:
		
		ambientNoise = snd_waves
		audio_play_sound(ambientNoise, 2, true);
		audio_sound_gain(ambientNoise, 0.4, 5000)
		break;
		
		
	case r_home2: 
		ambientNoise = snd_waves
		audio_play_sound(ambientNoise, 2, false);
		audio_sound_gain(ambientNoise, 0.4, 5000)
		break;
	
		default: 
		ambientNoise = 0;
	
	
	
}

