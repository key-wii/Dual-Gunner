charging = false;
chargeMax = 20;
chargeMin = 5;
charge = chargeMax;

instance_create_layer(x, y, "Floor", obj_boxer_trap);

alarm_set(0, 100);