obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
line_drop=-1;
if instance_exists(obj_knight) obj_knight.dont_move=1;
mask_index=spr_empty;
depth=-1;
time=0;
line_part=0