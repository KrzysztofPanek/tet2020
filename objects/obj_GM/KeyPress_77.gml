if !instance_exists(obj_magic_block) && win==0
{
	time=0;
	magic_block=instance_create_depth(192,0,1,obj_magic_block);
	magic_block.image_alpha=0;
}