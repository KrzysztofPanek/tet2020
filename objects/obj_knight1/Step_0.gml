if image_alpha>0 && instance_place(x,y+32,obj_block)
{
	y+=32
	/*
	tmp=instance_place(x,y+32,obj_block);
	if image_alpha>0 && tmp.time==60
	{
		y+=32
		//time=0
	}*/
}

if image_alpha>0 && instance_place(x,y,obj_block) y-=32;
