// NO SHAKE
/*if shake>64 || shake<-64 shake=-shake/5;
//cool respone cam
x+= (room_width/2-x+shake)/8;
y+= (room_height/2-y+shake)/8;

if shake<0 //&& !instance_exists(obj_camera_shaker)
{
	shake++;
}
else if shake>0 //&& !instance_exists(obj_camera_shaker)
{
	shake--;
}
*/




camera_set_view_mat(cam,vm);
