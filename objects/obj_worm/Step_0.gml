if hp<1
{
	image_alpha-=0.02;	
	if image_alpha<0.2 instance_destroy(self);
}
else if bite==0 && irandom(64)==60
{
	bite=1;
	sprite_index=spr_worm_attack
	if image_xscale==1 || image_xscale==-1 att=instance_create_depth(x-32,y,depth-1,obj_worm_attack);
	else if image_xscale==2 att=instance_create_depth(x-64,y,depth-1,obj_worm_attack);
	else if image_xscale==-2 att=instance_create_depth(x,y,depth-1,obj_worm_attack);
	att.image_xscale=image_xscale;
	att.image_yscale=image_yscale;
	att.creator=id;
}
else if bite==1 && !instance_exists(obj_worm_attack)
{
	bite=0;
	sprite_index=spr_worm_anim
}

if txt_alpha>0 txt_alpha-=0.1;
//60 fps if txt_alpha>0 txt_alpha-=0.005;