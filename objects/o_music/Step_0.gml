//press pause music key to toggle
if (keyboard_check_pressed(ord("P")))
{
	songPaused = !songPaused
}

//if the song isnt paused
if songPaused == false
{
	if !(audio_is_playing(roomTheme)) // if roomTheme (set in create (will be room start) event(will be switch statement)) isnt playing (or paused)
	{
		currentSong = audio_play_sound(roomTheme, roomThemeVolume,1)	//play it - stored in currentSong
	}
	if (audio_is_paused(currentSong)) //if the song is paused, resume it (starts at 0 in create, this will happen only after prev if statement carried out)
	{
		audio_resume_sound(currentSong)
	}

}

if (songPaused) // if pause toggled on, pause it
{

	if (audio_is_playing(currentSong)) audio_pause_sound(currentSong)	

}

if (global.gamePaused)
{
	audio_sound_gain(currentSong, 0.5*roomThemeVolume, 0)
	
}else audio_sound_gain(currentSong, roomThemeVolume, 0)