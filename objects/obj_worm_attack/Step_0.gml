//if image_number=image_index instance_destroy(self)
if image_number==image_index //instance_destroy(self)
{
	creator.bite=0;
	instance_destroy(self)
}
/*if image_xscale!=creator.image_xscale && dir_set==0
{
	dir_set=1
	image_xscale=creator.image_xscale;
}