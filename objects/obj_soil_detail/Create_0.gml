depth=2;
image_alpha=0.5
image_index=irandom(10);
image_speed=0;

//image_alpha=choose(0.5,0.75,0.5,0.9,0.5);
if irandom(8)>3
{
	/*if irandom(4)==3
	{
		rocks=instance_create_depth(x+32,y,1,obj_soil_detail_rocks_mirror);
		rocks.image_alpha=image_alpha;//+0.25;
		//rocks.image_xscale=-1;
		rocks.creator=id;
	}
	else 
	{*/
		rocks=instance_create_depth(x,y,1,obj_soil_detail_rocks);
		//rocks.image_alpha=image_alpha+0.25;
		rocks.creator=id;
	//}	
}

image_speed=0;