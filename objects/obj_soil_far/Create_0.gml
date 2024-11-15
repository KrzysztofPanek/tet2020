depth=2;
image_index=irandom(3);
image_speed=0;
image_alpha=0.16;
//image_xscale=0.5;
//image_yscale=0.5;

if !instance_place(x,y-32,obj_soil_far)
{
	grass=instance_create_depth(x,y,1,obj_block_grass);
	grass.image_alpha=image_alpha;
}