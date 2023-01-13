/// @description Insert description here
// You can write your code in this editor

draw_self();

if (points != -1)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(make_color_rgb(103,103,103));
	draw_text(x,y,string(points));
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
