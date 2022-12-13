// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawpolaroid(){
 //draws a polaroid that "develops"
draw_set_color(c_black);
draw_set_alpha(percent);
draw_rectangle(0,0, camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]), false);
draw_sprite_stretched(spr_polaroid, 1, 125, 10, 160, 160); // white outline of polaroid



}