/// @description Destroy
global.collectedTrash += 1;
audio_play_sound(a_pickup, 2, false);
removeTrash();
instance_destroy();