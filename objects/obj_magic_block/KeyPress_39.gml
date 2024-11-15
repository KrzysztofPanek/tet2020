if falling==1 && x<320 && image_alpha>0
{
	effect_create_below(ef_star,x-16,y+16,0,c_purple)
	x+=32;
	effect_create_below(ef_star,x-16,y+16,0,c_purple)
	obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
}