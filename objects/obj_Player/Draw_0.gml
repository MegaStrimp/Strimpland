/// @description Insert description here
// You can write your code in this editor

draw_self();

if (showPlayer != -1)
{
	showPlayer -= 1;
	draw_set_color(make_color_rgb(103,103,103));
	draw_set_halign(fa_center);
	draw_text(x,y - 16,"P" + string(player + 1));
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}
