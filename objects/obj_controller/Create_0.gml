audio_group_load(music_group);
audio_group_load(sfx_group);

global.music_volume = 0;
audio_sound_gain(snd_manguezal, global.music_volume, 0);
audio_sound_gain(snd_menu, global.music_volume, 0);
audio_sound_gain(snd_tema, global.music_volume, 0);