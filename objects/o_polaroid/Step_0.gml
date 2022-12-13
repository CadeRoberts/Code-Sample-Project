with(o_boyo) state = playerstatelocked;
//for the fade to black

percent = min(1, percent + (TRANSITION_SPEED*3));

// for the developing
percent2 = min(1, percent2 + (TRANSITION_SPEED/10));


//pausing music and ambient noise
if (audioPaused = false)
{
	audioPaused = true;
	audio_pause_all();
}

// congratulatory sound
if (haventPlayed == true)
{
	audio_play_sound(snd_congrats, 5, 0);
	haventPlayed = false;
}

// typing the animal's stats
weightString = "Weight:" + creatureWeight + "lbs";
heightString = "Height:" + creatureHeight + "in";

// writing the specific creature
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