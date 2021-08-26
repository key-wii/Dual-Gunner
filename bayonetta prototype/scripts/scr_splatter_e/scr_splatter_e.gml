function splatter_e(min, max) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        instance_create_layer(x + ranX, y + ranY, "Splatter", obj_splatter_e);
    }
}

function splatterBig_e(min, max, scaleUp) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        var splat = instance_create_layer(x + ranX, y + ranY, "Splatter", obj_splatter_e);
		splat.image_xscale += scaleUp;
		splat.image_yscale += scaleUp;
    }
}

function splatterAt_e(xx, yy, min, max) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        instance_create_layer(xx + ranX, yy + ranY, "Splatter", obj_splatter_e);
    }
}

function splatterBigAt_e(xx, yy, min, max, scaleUp) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        var splat = instance_create_layer(xx + ranX, yy + ranY, "Splatter", obj_splatter_e);
		splat.image_xscale += scaleUp;
		splat.image_yscale = image_xscale;
    }
}

function splatterRadiusAt_e(xx, yy, min, max, radius) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelpWide(min, max, radius);
        instance_create_layer(xx + ranX, yy + ranY, "Splatter", obj_splatter_e);
    }
}



function splatHelp_e(min, max) {
	var range = 8 + /*min + */max;
	ranX = random_range(-range, range);
	if (ranX > -min && ranX < 0) ranX = -min;
	else if (ranX < min && ranX > 0) ranX = min;
	ranY = random_range(-range, range);
	if (ranY > -min && ranY < 0) ranY = -min;
	else if (ranY < min && ranY > 0) ranY = min;
}

function splatHelpWide_e(min, max, radius) {
	var range = radius + /*min + */max;
	ranX = random_range(-range, range);
	if (ranX > -min && ranX < 0) ranX = -min;
	else if (ranX < min && ranX > 0) ranX = min;
	ranY = random_range(-range, range);
	if (ranY > -min && ranY < 0) ranY = -min;
	else if (ranY < min && ranY > 0) ranY = min;
}