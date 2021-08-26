function combo_list() {
	var ddir = 0;
	if (dir_face == 1) 
		if (first_hit == L) ddir = 1;
		else ddir = 2;
	if (dir_face == -1)
		if (first_hit == R) ddir = 1;
		else ddir = 2;
	ds_list_add(combo_now, ddir);
}