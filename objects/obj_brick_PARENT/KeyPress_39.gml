if instance_exists(b0) && instance_exists(b1) && instance_exists(b2) && instance_exists(b3) && falling==1
{
	if b0.x<320 && b1.x<320 && b2.x<320 && b3.x<320
	{
		if !keyboard_check_pressed(vk_down) && !keyboard_check_pressed(vk_left) && !keyboard_check_pressed(vk_space)
		{
			b0.x+=32
			b1.x+=32 
			b2.x+=32 
			b3.x+=32
		}
		//obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
	}
}