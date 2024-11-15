depth=-1;
image_index=irandom(image_number)
line_dropped=0;
if choose(1,-1,1)==-1
{
	image_xscale=-1
	x+=32;
}
//image_xscale=choose(1,-1,1)
image_alpha=0.64;


if instance_exists(obj_line_move) obj_line_move.line_part++;