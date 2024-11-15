if instance_exists(obj_line_move)
{
	if line_dropped=0 && obj_line_move.time%obj_line_move==0
	{
		if image_xscale==1
		{
			//if place_empty(x,y+32,obj_block,obj_soil) instance_create_depth(x,y+32,depth,obj_line)
			if place_free(x,y+32) instance_create_depth(x,y+32,depth,obj_line)
			else instance_create_depth(x,y+32,depth,obj_line_end)
		}
		else 
		{
			//if place_empty(x-32,y+32,obj_block,obj_soil) instance_create_depth(x-32,y+32,depth,obj_line)
			if place_free(x,y+32) instance_create_depth(x-32,y+32,depth,obj_line)
			else instance_create_depth(x-32,y+32,depth,obj_line_end)
		}
		line_dropped=1
	}
}

if !instance_exists(obj_line_end) && !instance_place(x,y+32,obj_line) instance_destroy(self)
