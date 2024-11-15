if /*place_free(x,y+32) &&*/y<672 && falling==1 && !keyboard_check_pressed(vk_left) && !keyboard_check_pressed(vk_right) && !keyboard_check_pressed(vk_space) && image_alpha>0
{
	effect_create_below(ef_star,x+16,y,0,c_purple)
	y+=32;
	effect_create_below(ef_star,x+16,y,0,c_purple)
	obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
}