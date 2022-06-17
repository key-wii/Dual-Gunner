/// @description Fill lists
if (ds_list_size(prevXs) >= 5) {
	ds_list_delete(prevXs, 0);
	ds_list_delete(prevYs, 0);
}
ds_list_add(prevXs, x);
ds_list_add(prevYs, y);