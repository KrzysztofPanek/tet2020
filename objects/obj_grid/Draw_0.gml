
draw_set_color(c_white)
draw_set_alpha(0.08)
for(var i=-512; i<= max(room_width, room_height); i+=32) {
     draw_line(-512, i, room_width, i);
     draw_line(i, -512, i, room_height);
}
draw_set_alpha(1)