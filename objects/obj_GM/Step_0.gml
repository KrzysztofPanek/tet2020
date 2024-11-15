	inc=!inc

	if (inc) draw_enable_drawevent(true);
	else
	draw_enable_drawevent(false);
	//if falling==0 && !instance_exists(obj_magic_block) && !instance_exists(obj_knight) && win==0
	//{
		if time>10 time=-10;
		else time++
	//}

if counter_tmp==1
{
/*if falling==0 && !instance_exists(obj_magic_block) && !instance_exists(obj_knight) && win==0
{
	time++
	//time+=5
	obj_camera.vm=matrix_build_lookat(obj_camera.x,obj_camera.y-10,-100001,obj_camera.x,obj_camera.y--,0,0,1,0);
}*/

if time>9 && falling==0 && !instance_exists(obj_magic_block) && !instance_exists(obj_knight) && win==0
{
	randomize()
	row_checked=0;
	time=-6;
	falling=1;
	falling_brick=instance_create_depth(0,0,0,choose(obj_brick_S,obj_brick_Z,obj_brick_T,obj_brick_L,obj_brick_L1,obj_brick_SQUARE,obj_brick_I))
	falling_brick.creator=id;
	falling_brick.falling=1;
}

if time>-5 && time<-3 && irandom(64)==55 && !instance_exists(obj_magic_block) instance_create_depth(irandom_range(room_width+128,room_width*2),irandom_range(8,room_height-256),-5,obj_cloud)
if row_checked==0
{
	for(xi=0; xi<= 320; xi+=32) 
	{
		grid_empty0[xi/32]=position_empty(xi,672);
		grid_empty1[xi/32]=position_empty(xi,640);
		grid_empty2[xi/32]=position_empty(xi,608);
		grid_empty3[xi/32]=position_empty(xi,576);
		grid_empty4[xi/32]=position_empty(xi,544);
		grid_empty5[xi/32]=position_empty(xi,512);
		grid_empty6[xi/32]=position_empty(xi,480);
		grid_empty7[xi/32]=position_empty(xi,448);
		grid_empty8[xi/32]=position_empty(xi,416);
		grid_empty9[xi/32]=position_empty(xi,384);
		grid_empty10[xi/32]=position_empty(xi,352);
		grid_empty11[xi/32]=position_empty(xi,336);
		grid_empty12[xi/32]=position_empty(xi,320);
		grid_empty13[xi/32]=position_empty(xi,288);
		grid_empty14[xi/32]=position_empty(xi,256);
		grid_empty15[xi/32]=position_empty(xi,224);
		grid_empty16[xi/32]=position_empty(xi,192);
		grid_empty17[xi/32]=position_empty(xi,160);
		grid_empty18[xi/32]=position_empty(xi,128);
		grid_empty19[xi/32]=position_empty(xi,96);
		
		if xi>320 row_checked=1;
	}
}

/*if fps_counter==6
{
	fps_now=int64(fps_real)
	fps_counter=0;
}
else fps_counter++*/

if !instance_exists(obj_magic_block) && row_checked==1
{
	if win==0 && row_done_counter==row_number win=1;
	
	if row_done0==0&& grid_empty0[1]==0 &&grid_empty0[2]==0 &&grid_empty0[3]==0 && grid_empty0[4]==0 && grid_empty0[5]==0 && grid_empty0[6]==0 && grid_empty0[7]==0 && grid_empty0[8]==0 && grid_empty0[9]==0 && grid_empty0[10]==0
	{
		row_done0=1;
		row_done_counter++;
	}
	//else if row_done0==1 row_done0=0;
	
	if row_done1==0 && grid_empty1[1]==0 && grid_empty1[2]==0 && grid_empty1[3]==0 && grid_empty1[4]==0 && grid_empty1[5]==0 && grid_empty1[6]==0 && grid_empty1[7]==0 && grid_empty1[8]==0 && grid_empty1[9]==0 && grid_empty1[10]==0
	{
		row_done1=1;
		row_done_counter++;
	}
	//else if row_done1==1 row_done1=0;
	
	if row_done2==0 && grid_empty2[1]==0 && grid_empty2[2]==0 && grid_empty2[3]==0 && grid_empty2[4]==0 && grid_empty2[5]==0 && grid_empty2[6]==0 && grid_empty2[7]==0 && grid_empty2[8]==0 && grid_empty2[9]==0 && grid_empty2[10]==0
	{
		row_done2=1;
		row_done_counter++;
	}
	//else if row_done2==1 row_done2=0;
	
	if row_done3==0 && grid_empty3[1]==0 && grid_empty3[2]==0 && grid_empty3[3]==0 && grid_empty3[4]==0 && grid_empty3[5]==0 && grid_empty3[6]==0 && grid_empty3[7]==0 && grid_empty3[8]==0 && grid_empty3[9]==0 && grid_empty3[10]==0
	{
		row_done3=1;
		row_done_counter++;
	}
	//else if row_done3==1 row_done3=0;
	
	if row_done4==0 && grid_empty4[1]==0 && grid_empty4[2]==0 && grid_empty4[3]==0 && grid_empty4[4]==0 && grid_empty4[5]==0 && grid_empty4[6]==0 && grid_empty4[7]==0 && grid_empty4[8]==0 && grid_empty4[9]==0 && grid_empty4[10]==0
	{
		row_done4=1;
		row_done_counter++;
	}
	//else if row_done4==1 row_done4=0;
	
	if row_done5==0 && grid_empty5[1]==0 && grid_empty5[2]==0 && grid_empty5[3]==0 && grid_empty5[4]==0 && grid_empty5[5]==0 && grid_empty5[6]==0 && grid_empty5[7]==0 && grid_empty5[8]==0 && grid_empty5[9]==0 && grid_empty5[10]==0
	{
		row_done5=1;
		row_done_counter++;
	}
	//else if row_done5==1 row_done5=0;
	
	if row_done6==0 && grid_empty6[1]==0 && grid_empty6[2]==0 && grid_empty6[3]==0 && grid_empty6[4]==0 && grid_empty6[5]==0 && grid_empty6[6]==0 && grid_empty6[7]==0 && grid_empty6[8]==0 && grid_empty6[9]==0 && grid_empty6[10]==0
	{
		row_done6=1;
		row_done_counter++;
	}
	//else if row_done6==1 row_done6=0;
	
	if row_done7==0 && grid_empty7[1]==0 && grid_empty7[2]==0 && grid_empty7[3]==0 && grid_empty7[4]==0 && grid_empty7[5]==0 && grid_empty7[6]==0 && grid_empty7[7]==0 && grid_empty7[8]==0 && grid_empty7[9]==0 && grid_empty7[10]==0
	{
		row_done7=1;
		row_done_counter++;
	}
	//else if row_done7==1 row_done7=0;
	
	if row_done8==0 && grid_empty8[1]==0 && grid_empty8[2]==0 && grid_empty8[3]==0 && grid_empty8[4]==0 && grid_empty8[5]==0 && grid_empty8[6]==0 && grid_empty8[7]==0 && grid_empty8[8]==0 && grid_empty8[9]==0 && grid_empty8[10]==0
	{
		row_done8=1;
		row_done_counter++;
	}
	//else if row_done8==1 row_done8=0;
	
	if row_done9==0 && grid_empty9[1]==0 && grid_empty9[2]==0 && grid_empty9[3]==0 && grid_empty9[4]==0 && grid_empty9[5]==0 && grid_empty9[6]==0 && grid_empty9[7]==0 && grid_empty9[8]==0 && grid_empty9[9]==0 && grid_empty9[10]==0
	{
		row_done9=1;
		row_done_counter++;
	}
	//else if row_done9==1 row_done9=0;
	
	if row_done10==0 && grid_empty10[1]==0 && grid_empty10[2]==0 && grid_empty10[3]==0 && grid_empty10[4]==0 && grid_empty10[5]==0 && grid_empty10[6]==0 && grid_empty10[7]==0 && grid_empty10[8]==0 && grid_empty10[9]==0 && grid_empty10[10]==0
	{
		row_done10=1;
		row_done_counter++;
	}
	//else if row_done10==1 row_done10=0;
	
	if row_done11==0 && grid_empty11[1]==0 && grid_empty11[2]==0 && grid_empty11[3]==0 && grid_empty11[4]==0 && grid_empty11[5]==0 && grid_empty11[6]==0 && grid_empty11[7]==0 && grid_empty11[8]==0 && grid_empty11[9]==0 && grid_empty11[10]==0
	{
		row_done11=1;
		row_done_counter++;
	}
	//else if row_done11==1 row_done11=0;
	
	if row_done12==0 && grid_empty12[1]==0 && grid_empty12[2]==0 && grid_empty12[3]==0 && grid_empty12[4]==0 && grid_empty12[5]==0 && grid_empty12[6]==0 && grid_empty12[7]==0 && grid_empty12[8]==0 && grid_empty12[9]==0 && grid_empty12[10]==0
	{
		row_done12=1;
		row_done_counter++;
	}
	//else if row_done12==1 row_done12=0;
	
	if row_done13==0 && grid_empty13[1]==0 && grid_empty13[2]==0 && grid_empty13[3]==0 && grid_empty13[4]==0 && grid_empty13[5]==0 && grid_empty13[6]==0 && grid_empty13[7]==0 && grid_empty13[8]==0 && grid_empty13[9]==0 && grid_empty13[10]==0
	{
		row_done13=1;
		row_done_counter++;
	}
	//else if row_done13==1 row_done13=0;
	
	
	if row_done14==0 && grid_empty14[1]==0 && grid_empty14[2]==0 && grid_empty14[3]==0 && grid_empty14[4]==0 && grid_empty14[5]==0 && grid_empty14[6]==0 && grid_empty14[7]==0 && grid_empty14[8]==0 && grid_empty14[9]==0 && grid_empty14[10]==0
	{
		row_done14=1;
		row_done_counter++;
	}
	//else if row_done14==1 row_done14=0;
	
	if row_done15==0 && grid_empty15[1]==0 && grid_empty15[2]==0 && grid_empty15[3]==0 && grid_empty15[4]==0 && grid_empty15[5]==0 && grid_empty15[6]==0 && grid_empty15[7]==0 && grid_empty15[8]==0 && grid_empty15[9]==0 && grid_empty15[10]==0
	{
		row_done15=1;
		row_done_counter++;
	}
	//else if row_done15==1 row_done15=0;
	
	if row_done16==0 && grid_empty16[1]==0 && grid_empty16[2]==0 && grid_empty16[3]==0 && grid_empty16[4]==0 && grid_empty16[5]==0 && grid_empty16[6]==0 && grid_empty16[7]==0 && grid_empty16[8]==0 && grid_empty16[9]==0 && grid_empty16[10]==0
	{
		row_done16=1;
		row_done_counter++;
	}
	//else if row_done16==1 row_done16=0;
	
	if row_done17==0 && grid_empty17[1]==0 && grid_empty17[2]==0 && grid_empty17[3]==0 && grid_empty17[4]==0 && grid_empty17[5]==0 && grid_empty17[6]==0 && grid_empty17[7]==0 && grid_empty17[8]==0 && grid_empty17[9]==0 && grid_empty17[10]==0
	{
		row_done17=1;
		row_done_counter++;
	}
	//else if row_done17==1 row_done17=0;
	
	
	if row_done18==0 && grid_empty18[1]==0 && grid_empty18[2]==0 && grid_empty18[3]==0 && grid_empty18[4]==0 && grid_empty18[5]==0 && grid_empty18[6]==0 && grid_empty18[7]==0 && grid_empty18[8]==0 && grid_empty18[9]==0 && grid_empty18[10]==0
	{
		row_done18=1;
		row_done_counter++;
	}
	//else if row_done18==1 row_done18=0;
	
	if row_done0==19 && grid_empty19[1]==0 && grid_empty19[2]==0 && grid_empty19[3]==0 && grid_empty19[4]==0 && grid_empty19[5]==0 && grid_empty19[6]==0 && grid_empty19[7]==0 && grid_empty19[8]==0 && grid_empty19[9]==0 && grid_empty19[10]==0
	{
		row_done19=1;
		row_done_counter++;
	}
	//else if row_done19==1 row_done19=0;
	row_checked=2;
}
counter_tmp++
}
else 
{
	counter_tmp++
	
	if counter_tmp>11 counter_tmp=0;
}