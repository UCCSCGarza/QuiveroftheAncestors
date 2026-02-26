if (room == rm_title){
	audio_play_sound(snd_music, 1, true);
} else if (room == rm_unicorn){
	audio_stop_all();
	audio_play_sound(snd_unicornlove, 1, true);
}