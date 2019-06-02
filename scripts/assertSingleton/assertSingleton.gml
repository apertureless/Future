if (instance_number(object_index) > 1 ) {
	instance_destroy();
	return false
}

persistent = true
return true