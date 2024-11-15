if y<672 && place_free(x,y+32) && falling==1 && !keyboard_check_pressed(vk_left) && !keyboard_check_pressed(vk_right) && !keyboard_check_pressed(vk_space)
{
	time=0;
	y+=32;
	//obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
}