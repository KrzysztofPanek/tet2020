draw_self();
draw_text(x,y,hp)
//draw_text(x,y,txt_alpha)
//draw_text_color(x-2,y-8,"-1",c_red,c_maroon,c_red,c_red,txt_alpha)
draw_healthbar(x+2,y-1,x+30,y+1,hp*20,c_black,c_red,c_red,0,false,false)
/*
if instance_place(x,y,obj_knight_attack) 
{
	attack=instance_place(x,y,obj_knight_attack) 
	if attack.attack==1
	{
		draw_text_color(x-4,y-4,"-1",c_red,c_maroon,c_red,c_red,txt_alpha)
	}
}