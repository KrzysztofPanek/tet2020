cam=camera_create();

cam_w=room_width;// 1920;
cam_h=room_height;// 1080;
//cam_spd=16;

vm=matrix_build_lookat(x,y,-100001,x,y,0,0,1,0);
pm=matrix_build_projection_ortho(cam_w,cam_h,1,200001);

camera_set_view_mat(cam,vm);
camera_set_proj_mat(cam,pm);

view_camera[0]=cam;

//shake=0;

