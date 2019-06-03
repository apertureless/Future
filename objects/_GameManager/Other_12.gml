/// @description Game Over

gameOver = true;

if (gameOver) {
	
	if (!sprite_exists(screenShot)) {
		screenShot = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], 0, 0, 0, 0);
	}
	
	instance_deactivate_all(1);
}
