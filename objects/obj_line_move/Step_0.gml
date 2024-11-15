if line_drop==1 && place_free(x,y+32)//place_empty(x,y+32,obj_block,obj_soil)
{
	instance_create_depth(x,y+32,depth,obj_line)
	line_drop=0;
	image_alpha=0.64;
}
else if line_drop==1 && time<260
{
	time++
}

if line_part>0 && !instance_exists(obj_line) instance_destroy(self)