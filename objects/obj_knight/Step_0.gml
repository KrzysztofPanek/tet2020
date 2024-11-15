if counter_tmp==1
{
if image_number==image_index /*&& !keyboard_check_pressed(vk_right) && !keyboard_check_pressed(vk_left)*/ image_speed=0

if (!place_free(x,y+32) || y>=704) && solid==false //&& magic_close_no_solid==0
{
	solid=true;
	falling=0;
}
/*else if falling==1 && !keyboard_check_pressed(vk_down) && global.pause==false 
{
	if !keyboard_check_pressed(vk_anykey) || ( place_free(x-32,y) && keyboard_check_pressed(vk_left) ) ||  ( place_free(x+32,y) && keyboard_check_pressed(vk_right) )
	{
	if time<6 time++
	else if time==6
	{
		y+=32
		if place_free(x,y+32) && !instance_place(x,y+32,obj_block)
		{
			hp--;
			y+=32
		}
		else time=0
	}
	}
}*/
else if falling==0 && solid==false
{
	solid=true;
}

if falling==0 && place_free(x,y+32) && !instance_place(x,y+32,obj_block)&& !instance_place(x,y+32,obj_line_PARENT)
{
	hp--;
	y+=32
}
//else time=0

if hp<1
{
	image_alpha-=0.02;	
	if image_alpha<0.2 instance_destroy(self);
}
/*else if attack==0 && irandom(64)==60
{
	attack=1;
	sprite_index=spr_worm_attack
	att=instance_create_depth(x-32,y,depth-1,obj_worm_attack);
	att.image_xscale=image_xscale;
	att.creator=id;
}
else if attack==1 && !instance_exists(obj_worm_attack)
{
	attack=0;
	sprite_index=spr_worm_anim
}*/

if txt_alpha>0 txt_alpha-=0.005;


counter_tmp++
}
else 
{
	counter_tmp++
	
	if counter_tmp>11 counter_tmp=0;
}
/*if instance_exists(creator) 
{
	if !instance_place(x,y+32,creator) y+=32;
}