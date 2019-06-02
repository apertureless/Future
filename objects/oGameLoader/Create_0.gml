/// @description Autoload Managers

global.debug = true;

// Create Layer which will hold all Managers
layer_create(-100, "Preload");

var prefix = "_";
var oIndex = 0;

// Go through all objects
while (object_exists(oIndex)) {
	var name = object_get_name(oIndex);
	
	// Check if underscore prefix is in object name
	if (string_pos(prefix, name) == 1) {
		// Preload object
		var manager = instance_create_layer(10, 10, "Preload", oIndex);
		
		// Make manager persistent
		with (manager) {
			persistent = true;
		}
	}
	
	oIndex++;
}

room_goto_next();
