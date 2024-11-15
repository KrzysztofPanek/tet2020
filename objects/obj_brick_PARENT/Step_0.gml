// gravity
if obj_GM.time==9
{
	 if falling==1
	 {
		if instance_exists(b0) && instance_exists(b1) && instance_exists(b2) && instance_exists(b3)
		{
			if !instance_place(b0.x,b0.y-32,obj_block_solid) && !instance_place(b1.x,b1.y-32,obj_block_solid) && !instance_place(b2.x,b2.y-32,obj_block_solid) && !instance_place(b3.x,b3.y-32,obj_block_solid)
			&& !instance_place(b0.x,b0.y-32,obj_soil) && !instance_place(b1.x,b1.y-32,obj_soil) && !instance_place(b2.x,b2.y-32,obj_soil) && !instance_place(b3.x,b3.y-32,obj_soil)
			{
				b0.y+=32;
				b1.y+=32;
				b2.y+=32;
				b3.y+=32;
				if !instance_exists(obj_knight) obj_camera.vm=matrix_build_lookat(b0.x,b0.y-10,-100001,b0.x,b0.y--,0,0,1,0);
				//else obj_knight.solid=true
			}
		}
	 }
	 else if instance_exists(obj_knight) if obj_knight.falling==1 obj_knight.falling=0;
	 else instance_destroy(self)

if instance_exists(obj_knight)
{
	if obj_knight.falling==1
	{
		if  !instance_place(obj_knight.x,obj_knight.y+33,obj_block_solid) && !instance_place(obj_knight.x,obj_knight.y+33,obj_soil)// && !instance_place(obj_knight.x,obj_knight.y+33,obj_block)
		{
			obj_knight.y+=33;
			obj_camera.vm=matrix_build_lookat(obj_knight.x,obj_knight.y-10,-100001,obj_knight.x,obj_knight.y--,0,0,1,0);
		}
	}
}
}



// tell all bricks to stop falling
if falling==0 && falling_set==0
{
	if instance_exists(b0)
	{
		b0.falling=0;
		image_alpha=0.32;
		solid=true;
	}
	if instance_exists(b1)
	{
		b1.falling=0;
		image_alpha=0.32;
		solid=true;
	}
	if instance_exists(b2)
	{
		b2.falling=0;
		image_alpha=0.32;
		solid=true;
	}
	if instance_exists(b3)
	{
		 b3.falling=0;		
		 image_alpha=0.32;
		 solid=true;
	}

	falling_set=1;
}
// comment if test single bricks
if falling==0 && landing==1
{
	landing=0;
	if instance_exists(creator) creator.falling=0;
}
else if falling==1 && instance_exists(creator) creator.falling=1;

if falling==0 && obj_GM.time==32 instance_destroy(self)

if image_speed>0 image_speed=0;
/*
if left_collision==1
{
	b0.x+=32
	b1.x+=32
	b2.x+=32
	b3.x+=32
	
	left_collision=0;
	
	b0.falling=1;
	b1.falling=1;
	b2.falling=1;
	b3.falling=1;
	
}