depth=3;
image_alpha=random_range(0.7,0.9)
image_index=irandom(3);
image_speed=0;

//image_alpha=choose(0.5,0.75,0.5,0.9,0.5);
if !instance_place(x,y-32,obj_soil)
{
	if irandom(3)==2
	{
		grass=instance_create_depth(x+32,y,1,obj_block_grass);
		grass.creator=id;
		grass.image_alpha=image_alpha;//+0.25;
		grass.image_xscale=-1;
	}
	else 
	{
		grass=instance_create_depth(x,y,1,obj_block_grass);
		grass.creator=id;
		grass.image_alpha=image_alpha;//+0.25;
		
	}
}
/*
if irandom(8)<6
{

		detail=instance_create_depth(x,y,2,obj_soil_detail);
		//soil.image_alpha=image_alpha+0.25;
		detail.creator=id;
	
//}*/

image_speed=0;