///@description Room Creation Code

#region Music
if (audio_is_playing(mus_Game)) audio_stop_sound(mus_Game);
audio_play_sound(mus_Game,0,true);
#endregion