function check_combo(list1, list2) {
	var equal = true;
	
	//Only set true if list 1 is as big or smaller than list 2
	if(ds_list_size(list1) <= ds_list_size(list2)) {
		//make sure the contents of list 1 is equal to list 2's contents
	    for(var i = 0; i < ds_list_size(list1); i++) {
	        if(ds_list_find_value(list1, i) != ds_list_find_value(list2, i)) {
	            equal = false;
	            break;
	        }
	    }
	} else equal = false;
	
	return equal;
}