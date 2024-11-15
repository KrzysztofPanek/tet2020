if solid==false && image_alpha>0 && !instance_place(x,y,obj_block) && !instance_place(x,y,obj_block_solid) && !instance_place(x,y,obj_soil)
{
	effect_create_below(ef_star,x+16,y,0,c_purple)
	effect_create_below(ef_star,x,y-24,0,c_purple)
	effect_create_below(ef_star,x+32,y-24,0,c_purple)
	
	effect_create_below(ef_star,x+48,y,0,c_purple)
	effect_create_below(ef_star,x,y+24,0,c_purple)
	effect_create_below(ef_star,x+64,y+8,0,c_purple)
	
	/*if instance_place(x,y-32,obj_block)
	{
		tmp=instance_place(x,y-32,obj_block);
		tmp.image_alpha=0.5;
	}*/
	
	solid=true;
	falling=0;
	instance_create_depth(x,y,0,obj_block_solid)
	instance_destroy(self);
}