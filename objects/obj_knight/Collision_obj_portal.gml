if instance_place(x,y,obj_line_move) || instance_place(x,y,obj_line)
{
	instance_destroy(obj_line_end)
	instance_destroy(self)
}