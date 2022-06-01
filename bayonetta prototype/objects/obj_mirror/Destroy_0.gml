/// @description 
if (instance_exists(owner))
	ds_list_delete(owner.mirrors, ds_list_find_index(owner.mirrors, id));