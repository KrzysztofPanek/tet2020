if dont_move==0//!instance_exists(obj_line_move)
{
if x>64 && place_free(x-32,y) && image_xscale==-1 x-=32
else if x>64 && place_free(x-32,y)
{
	image_xscale=-1;
	x+=32
}
if place_free(x,y+32) && !instance_place(x,y+32,obj_block) y+=32

image_speed=1

}
/*if instance_exists(creator)
{
	if x>64 && creator.falling==1
	{
		if !keyboard_check_pressed(vk_down) && !keyboard_check_pressed(vk_right) && !keyboard_check_pressed(vk_space)
		{
			x-=32
		}
		//obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
	}
}