/// @description 
event_inherited();
image_speed = 0.3;

#region Sprite Table
	#region Idle
spriteTable[STATE.IDLE, DIR.RIGHT] = s_scumbag_idle_left;
spriteTable[STATE.IDLE, DIR.UP] = s_scumbag_idle_left;
spriteTable[STATE.IDLE, DIR.LEFT] = s_scumbag_idle_left;
spriteTable[STATE.IDLE, DIR.DOWN] = s_scumbag_idle_left;
	#endregion
	
	#region Move 
spriteTable[STATE.MOVE, DIR.RIGHT] = s_scumbag_walk_left;
spriteTable[STATE.MOVE, DIR.UP] = s_scumbag_walk_left;
spriteTable[STATE.MOVE, DIR.LEFT] = s_scumbag_walk_left;
spriteTable[STATE.MOVE, DIR.DOWN] = s_scumbag_walk_left;
	#endregion
#endregion