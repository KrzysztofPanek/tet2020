event_inherited();

b0=instance_create_depth(96,32,0,obj_block)
b1=instance_create_depth(128,32,0,obj_block)
b2=instance_create_depth(160,32,0,obj_block)
b3=instance_create_depth(192,32,0,obj_block)
if obj_GM.knight_spawn==1
{
	knight=instance_create_depth(128,0,1,obj_knight);
	obj_GM.knight_spawn=0; knight.creator=b3
}
b0.creator=id
b1.creator=id
b2.creator=id
b3.creator=id

