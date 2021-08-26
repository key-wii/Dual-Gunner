function splatter(min, max) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        instance_create_layer(x + ranX, y + ranY, "Splatter", obj_splatter);
    }
}

function splatterBig(min, max, scaleUp) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        var splat = instance_create_layer(x + ranX, y + ranY, "Splatter", obj_splatter);
		splat.image_xscale += scaleUp;
		splat.image_yscale += scaleUp;
    }
}

function splatterAt(xx, yy, min, max) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        instance_create_layer(xx + ranX, yy + ranY, "Splatter", obj_splatter);
    }
}

function splatterBigAt(xx, yy, min, max, scaleUp) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelp(min, max);
        var splat = instance_create_layer(xx + ranX, yy + ranY, "Splatter", obj_splatter);
		splat.image_xscale += scaleUp;
		splat.image_yscale = splat.image_xscale;
    }
}

function splatterRadiusAt(xx, yy, min, max, radius) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelpWide(min, max, radius);
        instance_create_layer(xx + ranX, yy + ranY, "Splatter", obj_splatter);
    }
}

function splatter_ext(xx, yy, min, max, scaleUp, radius, llayer, spr, destroy_delay) {
	var count = random_range(min, max);
	
    for (var i = 0; i < count; i++) {
		splatHelpWide(min, max, radius);
        var splat = instance_create_layer(xx + ranX, yy + ranY, llayer, obj_splatter);
		splat.image_xscale += scaleUp;
		splat.image_yscale = splat.image_xscale;
		splat.sprite_index = spr;
		splat.sprite = spr;
		with (splat) alarm_set(0, destroy_delay);
    }
}


function splatHelp(min, max) {
	var range = 8 + /*min + */max;
	ranX = random_range(-range, range);
	if (ranX > -min && ranX < 0) ranX = -min;
	else if (ranX < min && ranX > 0) ranX = min;
	ranY = random_range(-range, range);
	if (ranY > -min && ranY < 0) ranY = -min;
	else if (ranY < min && ranY > 0) ranY = min;
}

function splatHelpWide(min, max, radius) {
	var range = radius + /*min + */max;
	ranX = random_range(-range, range);
	if (ranX > -min && ranX < 0) ranX = -min;
	else if (ranX < min && ranX > 0) ranX = min;
	ranY = random_range(-range, range);
	if (ranY > -min && ranY < 0) ranY = -min;
	else if (ranY < min && ranY > 0) ranY = min;
}