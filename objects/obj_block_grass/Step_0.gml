if checked==0
{
	if image_alpha==0 && instance_exists(creator) image_alpha=creator.image_alpha;
	if instance_place(x,y-32,obj_soil) instance_destroy(self);
	checked=1
}