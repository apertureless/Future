/// @description 
event_inherited();

image_speed = 0.3;

#region Sprite Table
	#region Idle
spriteTable[NPC.IDLE, DIR.RIGHT] = s_rocker_idle_left;
spriteTable[NPC.IDLE, DIR.UP] = s_rocker_idle_left;
spriteTable[NPC.IDLE, DIR.LEFT] = s_rocker_idle_left;
spriteTable[NPC.IDLE, DIR.DOWN] = s_rocker_idle_left;
	#endregion
	
	#region Move 
spriteTable[NPC.MOVING, DIR.RIGHT] = s_rocker_walk_left;
spriteTable[NPC.MOVING, DIR.UP] = s_rocker_walk_left;
spriteTable[NPC.MOVING, DIR.LEFT] = s_rocker_walk_left;
spriteTable[NPC.MOVING, DIR.DOWN] = s_rocker_walk_left;
	#endregion

	#region Calling
spriteTable[NPC.CALLING, DIR.RIGHT] = s_rocker_calling_left;
spriteTable[NPC.CALLING, DIR.UP] = s_rocker_calling_left;
spriteTable[NPC.CALLING, DIR.LEFT] = s_rocker_calling_left;
spriteTable[NPC.CALLING, DIR.DOWN] = s_rocker_calling_left;
	#endregion
	
#endregion