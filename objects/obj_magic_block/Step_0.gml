if obj_GM.falling==0
{
	image_alpha=0.9;
	falling=1
	obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
}