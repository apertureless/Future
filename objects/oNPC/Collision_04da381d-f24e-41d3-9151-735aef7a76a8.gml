/// @description 

if (isCalling) {
	alarm[1] = -1;
	isCalling = false;
	curretnCallDuration = 0;
	currentState = NPC.IDLE;
	audio_play_sound(a_call_interrupt, 1, false)
	screenshake(2,10)
}