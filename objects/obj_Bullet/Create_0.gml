/// @description Insert description here
// You can write your code in this editor
dmg = 1;
enemy = false;
if (audio_is_playing(snd_Shoot)) audio_stop_sound(snd_Shoot);
audio_play_sound(snd_Shoot,0,false);
