if falling==1 && y%32!=0 y++
if counter_tmp==1
{
if (!place_free(x,y+32) || y>=704) && solid==false && magic_close_no_solid==0
{
	obj_camera.vm=matrix_build_lookat(x,64,-100001,x,y,0,0,1,0);
	solid=true;
	falling=0;
	image_alpha=0.24;
	if instance_exists(creator) creator.falling=0;
}

if falling==1 && y%32!=0 y++
/*else if falling==1 && !keyboard_check_pressed(vk_down) && global.pause==false
{
	time++
	obj_camera.vm=matrix_build_lookat(x+320,y+320,-100001,x+320,y+320,0,0,1,0);
	obj_camera.x=x;
	obj_camera.y=y;
	//solid=false;
	if time==6
	{
		y+=32
		time=0
	}
}*/
else if falling==0 && image_alpha>=0.6 && solid==false
{
	image_alpha=0.64;
	solid=true;
	//obj_knight.solid=true
}


if falling==0 /*&& image_alpha==0.64*/ && instance_place(x,y-32,obj_block)
{
	tmp=instance_place(x,y-32,obj_block);
	tmp.image_alpha=image_alpha;
}
/*else if falling==0 && image_alpha==0.24 && ( instance_place(x,y+32,obj_block) ||  instance_place(x,y+32,obj_soil) ) &&  instance_place(x,y-32,obj_block)
{
	tmp=instance_place(x,y-32,obj_block);
	tmp.image_alpha=0.24;
}*/

if falling==0 /*&& image_alpha==0.64*/ && instance_place(x,y+32,obj_block)
{
	tmp=instance_place(x,y+32,obj_block);
	if tmp.image_alpha!=image_alpha image_alpha=tmp.image_alpha
}
else if falling==0 /*&& image_alpha==0.64*/ && instance_place(x,y+32,obj_block_solid)
{
	tmp=instance_place(x,y+32,obj_block_solid);
	if tmp.image_alpha!=image_alpha image_alpha=tmp.image_alpha
}
else if falling==0 && instance_place(x,y+32,obj_soil) image_alpha=0.24

/*if falling==0 && instance_place(x,y-32,obj_block)
{
	tmp=instance_place(x,y-32,obj_block);
	tmp.image_alpha=0.24;
}*/

if obj_GM.win==1 && sprite_index!=spr_block_brown
{
	sprite_index=spr_block_brown;
	
	effect_create_below(ef_spark,x+16,y,0,c_red)
	effect_create_below(ef_spark,x,y-24,0,c_red)
	effect_create_below(ef_spark,x+32,y-24,0,c_red)
	
	effect_create_below(ef_spark,x+48,y,0,c_lime)
	effect_create_below(ef_spark,x,y+24,0,c_lime)
	effect_create_below(ef_spark,x+64,y+8,0,c_lime)
}

/*
if magic_close_no_solid==0 && ( instance_place(x,y,obj_magic_block) || instance_place(x+32,y,obj_magic_block) || instance_place(x-32,y,obj_magic_block) || instance_place(x,y+32,obj_magic_block) || instance_place(x,y-32,obj_magic_block) )
{
	magic_close_no_solid=1;
	solid=false;
	alpha_tmp=image_alpha;
}
else if magic_close_no_solid==1 && !instance_place(x,y,obj_magic_block) && !instance_place(x+32,y,obj_magic_block) && !instance_place(x-32,y,obj_magic_block) && !instance_place(x,y+32,obj_magic_block) && !instance_place(x,y-32,obj_magic_block)
{
	magic_close_no_solid=0;
	solid=true;
	image_alpha=alpha_tmp;
}*/

if falling==1 && solid=false && obj_GM.win==1 instance_destroy(self);

if sprite_index!=spr_block_brown && obj_GM.falling==0 && time>-50 //&& time<-40
&& (obj_GM.row_done0==1 && y==672
|| obj_GM.row_done1==1 && y==640
|| obj_GM.row_done2==1 && y==608
|| obj_GM.row_done3==1 && y==576
|| obj_GM.row_done4==1 && y==544
|| obj_GM.row_done5==1 && y==512
|| obj_GM.row_done6==1 && y==480
|| obj_GM.row_done7==1 && y==448
|| obj_GM.row_done8==1 && y==416
|| obj_GM.row_done9==1 && y==384
|| obj_GM.row_done10==1 && y==352
|| obj_GM.row_done11==1 && y==336
|| obj_GM.row_done12==1 && y==320
|| obj_GM.row_done13==1 && y==288
|| obj_GM.row_done14==1 && y==256
|| obj_GM.row_done15==1 && y==224
|| obj_GM.row_done16==1 && y==192
|| obj_GM.row_done17==1 && y==160
|| obj_GM.row_done18==1 && y==128
|| obj_GM.row_done19==1 && y==96 )
{
	effect_create_above(ef_spark,x+16,y-16,1,c_yellow)
	effect_create_above(ef_spark,x+16,y+48,1,c_yellow)
	effect_create_above(ef_spark,x-16,y+16,1,c_yellow)
	effect_create_above(ef_spark,x+48,y+16,1,c_yellow)
	
	effect_create_above(ef_flare,x+16,y-32,1,c_aqua)
	effect_create_above(ef_flare,x+16,y+40,1,c_aqua)
	effect_create_above(ef_flare,x-10,y+32,1,c_aqua)
	effect_create_above(ef_flare,x+40,y+32,1,c_aqua)
	instance_create_depth(x,y,depth,obj_soil);
	instance_destroy(self)
}

if instance_place(x,y,obj_soil) instance_destroy(self)

counter_tmp++
}
else 
{
	counter_tmp++
	
	if counter_tmp>11 counter_tmp=0;
}
/*if obj_GM.row_done0==1 && y==672 sprite_index=spr_block_brown;
if obj_GM.row_done1==1 && y==640 sprite_index=spr_block_brown;
if obj_GM.row_done2==1 && y==608 sprite_index=spr_block_brown;
if obj_GM.row_done3==1 && y==576 sprite_index=spr_block_brown;
if obj_GM.row_done4==1 && y==544 sprite_index=spr_block_brown;
if obj_GM.row_done5==1 && y==512 sprite_index=spr_block_brown;
if obj_GM.row_done6==1 && y==480 sprite_index=spr_block_brown;
if obj_GM.row_done7==1 && y==448 sprite_index=spr_block_brown;
if obj_GM.row_done8==1 && y==416 sprite_index=spr_block_brown;
if obj_GM.row_done9==1 && y==384 sprite_index=spr_block_brown;
if obj_GM.row_done10==1 && y==352 sprite_index=spr_block_brown;
if obj_GM.row_done11==1 && y==336 sprite_index=spr_block_brown;
if obj_GM.row_done12==1 && y==320 sprite_index=spr_block_brown;
if obj_GM.row_done13==1 && y==288 sprite_index=spr_block_brown;
if obj_GM.row_done14==1 && y==256 sprite_index=spr_block_brown;
if obj_GM.row_done15==1 && y==224 sprite_index=spr_block_brown;
if obj_GM.row_done16==1 && y==192 sprite_index=spr_block_brown;
if obj_GM.row_done17==1 && y==160 sprite_index=spr_block_brown;
if obj_GM.row_done18==1 && y==128 sprite_index=spr_block_brown;
if obj_GM.row_done19==1 && y==96 sprite_index=spr_block_brown;
