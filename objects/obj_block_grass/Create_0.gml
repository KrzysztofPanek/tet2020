image_speed=0;
image_index=irandom(11);
image_alpha=0;
checked=0
if irandom(8)<6
{
	flower=instance_create_depth(x,y,depth-1,obj_block_flower);
	flower.image_alpha=image_alpha;
	flower.creator=id;
}