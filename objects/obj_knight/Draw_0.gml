draw_self();
draw_text(x-8,y,y)
draw_set_alpha(0.5)
if image_xscale==1 draw_healthbar(x,y-2,x+32,y+2,hp*10,c_black,c_orange,c_lime,0,false,false)
else if image_xscale==-1 draw_healthbar(x-32,y-2,x,y+2,hp*10,c_black,c_orange,c_lime,0,false,false)
draw_set_alpha(1)