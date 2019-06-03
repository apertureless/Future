/// @description Calling Alarm
isCalling = false;
curretnCallDuration = 0;
currentState = NPC.MOVING;
_direction = random(360);
npcSpeed = 0.5;
audio_play_sound(a_calling_success, 2, false);
spawnEnemy();
