if x>64 && line_drop==-1
	{
		if !keyboard_check_pressed(vk_down) && !keyboard_check_pressed(vk_right) && !keyboard_check_pressed(vk_space)
		{
			x-=32

		}
		obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
	}