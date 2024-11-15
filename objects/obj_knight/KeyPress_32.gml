if dont_move==0//!instance_exists(obj_line_move)
{
	if falling==0 && ( attack==0 || !instance_exists(obj_knight_attack) )
	{
		att=instance_create_depth(x,y,depth-1,obj_knight_attack);
		att.image_xscale=image_xscale;
		att.creator=id;
		attack=1;
	}
}