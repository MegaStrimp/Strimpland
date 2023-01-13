/// @description Insert description here
// You can write your code in this editor
ability = "NORMAL";
points = -1;

destroyTimerMax = 30;
destroyTimer = destroyTimerMax;
if (audio_is_playing(snd_Hit)) audio_stop_sound(snd_Hit);
audio_play_sound(snd_Hit,0,false);
