var shouldDrop = chance(0.25);

if (shouldDrop) {
	
	var drop = choose(1,2, 3, 4);
	var dropObject = noone;
	
	switch(drop) {
		case 1: 
			dropObject = oBanana;
			break;
		case 2:
			dropObject = oBottle;
			break;
		case 3: 
			dropObject = oCan;
			break;
		case 4: 
			dropObject = oCigarette;
			break;
	}
	
	instance_create_layer(x, y, "Instances", dropObject);
	
}