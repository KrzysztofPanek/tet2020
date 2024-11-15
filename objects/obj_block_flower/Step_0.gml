if counter_tmp==1
{
	if checked==0
	{
		if image_alpha==0 && instance_exists(creator) image_alpha=creator.image_alpha;
		if instance_place(x,y-32,obj_soil) || !instance_place(x,y,obj_block_grass) instance_destroy(self);
		checked=1
	}
//if time==10
//{
	if angle_up==0
	{
		if image_angle>=-angle_max image_angle--
		else if image_angle<-angle_max  angle_up=1
	}
	else if angle_up==1
	{
		if image_angle<=angle_max image_angle++
		else if image_angle>angle_max  angle_up=0
	}
	//time=0;
//}
//else time++

counter_tmp++
}
else 
{
	counter_tmp++
	
	if counter_tmp>counter_max counter_tmp=0;
}